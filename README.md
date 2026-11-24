# A Qualitative Analysis Framework for mHealth Privacy Practices

DOI: [10.1109/EuroSPW61312.2024.00010](https://doi.org/10.1109/EuroSPW61312.2024.00010)

### Abstract

_Mobile Health (mHealth) applications have become a crucial part of health monitoring and management. However, the proliferation of these applications has also raised concerns over the privacy and security of Personally Identifiable Information and Protected Health Information. Addressing these concerns, this paper introduces a novel framework for the qualitative evaluation of privacy practices in mHealth apps, particularly focusing on the handling and transmission of sensitive user data. Our investigation encompasses an analysis of 152 leading mHealth apps on the Android platform, leveraging the proposed framework to provide a multifaceted view of their data processing activities. Despite stringent regulations like the General Data Protection Regulation in the European Union and the Health Insurance Portability and Accountability Act in the United States, our findings indicate persistent issues with negligence and misuse of sensitive user information. We uncover significant instances of health information leakage to third-party trackers and a widespread neglect of privacy-by-design and transparency principles. Our research underscores the critical need for stricter enforcement of data protection laws and sets a foundation for future efforts aimed at enhancing user privacy within the mHealth ecosystem._

---

This repository contains the data and scripts used in the study. The data comprises the network traffic captured during the automated and manual crawls of the examined apps as well as additional datasets and logs.

The network traffic was captured using Heimdall, which is available at [https://github.com/tomcory/Heimdall](https://github.com/tomcory/Heimdall).

The main entry point is `Analysis.ipynb`, a Jupyter Notebook which contains the code for the data analysis and visualisations used in the paper.

The dataset is archived on Zenodo: [https://doi.org/10.5281/zenodo.24515705](https://doi.org/10.5281/zenodo.24515705). The network traffic databases are too large for this repository; run `./data/download.sh` to download them into `data/` before running the notebook. See [`data/README.md`](data/README.md) for a description of all files and known issues.

---

This paper part of the proceedings of the 2024 IEEE European Symposium on Security and Privacy Workshops (EuroS&PW'24).

When using this repository, please cite the paper as follows:

```
@INPROCEEDINGS{10628725,
  author={Cory, Thomas and Rieder, Wolf and Huynh, Thu-My},
  booktitle={2024 IEEE European Symposium on Security and Privacy Workshops (EuroS&PW)}, 
  title={A Qualitative Analysis Framework for mHealth Privacy Practices}, 
  year={2024},
  volume={},
  number={},
  pages={24-31},
  keywords={Privacy;Operating systems;Scalability;Insurance;Machine learning;Information leakage;Regulation;mHealth;privacy;mobile;tracking},
  doi={10.1109/EuroSPW61312.2024.00010}}
```