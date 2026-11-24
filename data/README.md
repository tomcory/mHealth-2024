## Data

This directory contains the different datasets we compiled during the study as well as a snapshot of Steven Black's Hosts list ([https://github.com/StevenBlack/hosts](https://github.com/StevenBlack/hosts)) that we used to label the HTTP requests and responses.

The complete dataset, including the two network traffic databases, is archived on Zenodo: [https://doi.org/10.5281/zenodo.24515705](https://doi.org/10.5281/zenodo.24515705). Due to their size, the databases (`*.db.zip`) are not part of this repository. To download and extract them into this directory, run:

```bash
./data/download.sh
```

| File                   | Description                                                                                                                                                                                        |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| automated-crawl.db.zip | SQLite database containing the network traffic captured by Heimdall during the automated crawl. Also contains the apps' embedded tracker libraries and permissions as detected by Heimdall.        |
| data-handling.json     | The output of crawling and parsing the Google Play Data Safety pages of the examined apps.                                                                                                         |
| manual-crawl.db.zip    | SQLite database containing the network traffic captured by Heimdall during the manual crawl.                                                                                                       |
| manual-log.csv         | Comprises a list of all examined apps with their developer, feature category, and expected PHI specificity, as well as a log of the PII and PHI that was manually entered during the manual crawl. |
| tracker-domains.txt    | List of the pay-level domains of the hosts in tracker-hosts.txt.                                                                                                                                   |
| tracker-hosts.txt      | Snapshot of Steven Black's Hosts lists that we used as the basis for the labelling of third-party trackers.                                                                                                                    |

### Credentials in the captured traffic

The captured traffic contains client-side credentials that the examined apps embed and send at runtime, e.g., Google/Firebase API keys and SDK keys of analytics, crash reporting, and messaging services. These are shipped with the publicly available app packages. A small number of hard-coded HTTP Basic credentials for the apps' own backends were replaced with random values of the same length and format; usernames, hosts, and all other data are unchanged.
