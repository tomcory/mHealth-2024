#!/bin/bash

# Downloads the network traffic databases from Zenodo (https://doi.org/10.5281/zenodo.24515705),
# verifies their checksums, and extracts them into this directory.

set -euo pipefail

RECORD_URL="https://zenodo.org/records/24515705/files"
DATA_DIR="$(cd "$(dirname "$0")" && pwd)"

FILES=(
  "automated-crawl.db.zip 9dae61788d0fe0c67ade8c838962acd0"
  "manual-crawl.db.zip 0787215dd611423e8790da070b324a0c"
)

md5_of() {
  if command -v md5sum >/dev/null; then md5sum "$1" | cut -d' ' -f1; else md5 -q "$1"; fi
}

for entry in "${FILES[@]}"; do
  read -r name checksum <<< "$entry"
  zip="$DATA_DIR/$name"

  if [[ ! -f "$zip" || "$(md5_of "$zip")" != "$checksum" ]]; then
    echo "Downloading $name ..."
    curl -fL --retry 3 -o "$zip" "$RECORD_URL/$name?download=1"
  fi

  if [[ "$(md5_of "$zip")" != "$checksum" ]]; then
    echo "Checksum mismatch for $name, please delete it and try again." >&2
    exit 1
  fi

  echo "Extracting $name ..."
  unzip -oq "$zip" -d "$DATA_DIR"
done

echo "Done. The databases are in $DATA_DIR."
