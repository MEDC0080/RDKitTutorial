## 29/1: Introduction to Python and RDKit - Florion Peni, Mateusz Kaczynski

<p align="center">
  <img src="https://cdn.freebiesupply.com/logos/large/2x/python-3-logo-svg-vector.svg" alt="Python logo" width="203" height="59">
  &nbsp;&nbsp;&nbsp;
  <img src="https://avatars.githubusercontent.com/u/2018047?s=280&v=4" alt="RDKit logo" width="100" height="100">
</p>

**10am–12pm at TBD**

[![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MEDC0080/RDKitTutorial)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MEDC0080/RDKitTutorial/HEAD)
[![License](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://github.com/MEDC0080/RDKitTutorial/blob/main/LICENSE)

---

### Summary

Python is a versatile programming language widely used in science due to its simplicity and extensive libraries. RDKit is an open-source *cheminformatics* toolkit that provides powerful tools for computational chemistry, making it important for molecular modelling and drug discovery.

The aim of this session is to provide you with the foundational building blocks of Python programming within a *cheminformatics* context, enabling you to further develop your coding skills and apply them in your work.

⏰ To make the most of the session, please try to complete the installation process beforehand. This will allow you to spend the session time effectively, focusing on exploring the self-paced tutorial content and addressing any questions you may have.

⚠️ **Remember to bring your laptop!**

---

### Instructions for Google Colab (preferred setup)

We recommend using **Google Colab**, which allows you to run the tutorial notebooks directly in your browser without installing anything. You must be logged into a Google account. If you do not have one, you will need to create one.

The same tutorial folder provided on Moodle is also hosted publicly here.

The notebooks are accessible via the links below.

| Notebook | Colab link |
|----------|------------|
| 01. Introduction to Python | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MEDC0080/RDKitTutorial/blob/main/notebooks/01_python_introduction.ipynb) |
| 02. Introduction to RDKit | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MEDC0080/RDKitTutorial/blob/main/notebooks/02_rdkit_introduction.ipynb) |
| 03. Substructure searching with RDKit | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MEDC0080/RDKitTutorial/blob/main/notebooks/03_rdkit_substructure.ipynb) |
| 04. Molecular similarity in RDKit | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MEDC0080/RDKitTutorial/blob/main/notebooks/04_rdkit_similarity.ipynb) |

---

### Instructions for Binder

If you prefer not to use Google Colab, you can also run the notebooks using **Binder**, a free cloud-based platform that launches a temporary Jupyter environment in your browser. Binder does not require installation, but it may take a minute or two to launch the environment the first time.

To use Binder:

1. Click the **Binder** badge below to launch the full tutorial repository in a Jupyter environment: <br> <a href="https://mybinder.org/v2/gh/MEDC0080/RDKitTutorial/HEAD" target="_blank"> <img src="https://mybinder.org/badge_logo.svg" alt="Launch Binder"> </a>

2. Once it opens, navigate to the `notebooks/` folder and open any of the `.ipynb` files to begin.

Keep in mind that Binder sessions are temporary and any changes you make will be lost once the session ends. If you want to save your work, consider downloading the notebook to your machine or using Google Colab instead.

---

### Local setup with Anaconda (deprecated)

If you prefer to run the tutorial locally using the Anaconda distribution, this option is also available.

After downloading the `RDKitTutorial` folder from Moodle, it may appear with a date appended to its name (e.g. `RDKitTutorial-yyyymmdd`). Please rename the folder to `RDKitTutorial` (no spaces) to ensure consistency with the instructions.

Inside the folder, you will find two setup guides:

- `instructions_installation.txt` contains step-by-step instructions to install Anaconda and configure the required `conda` environment on your own computer,

- and `instructions_ucl.txt` which contains instructions for using the Desktop@UCL Anywhere virtual desktop environment.

---

You can also preview the notebooks as static HTML files inside the `html/` subdirectory.  
Note that this format does not support running or editing code.

---

### Contacts

Florion Peni — [f.peni@ucl.ac.uk](mailto:f.peni@ucl.ac.uk)  
Mateusz Kaczynski — [mateusz.kaczynski.21@ucl.ac.uk](mailto:mateusz.kaczynski.21@ucl.ac.uk)  
*Module leader*; Prof Edith Chan — [edith.chan@ucl.ac.uk](mailto:edith.chan@ucl.ac.uk)

---

### License

This work is licensed under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** license.  
To view a copy of this license, visit: [http://creativecommons.org/licenses/by/4.0/](http://creativecommons.org/licenses/by/4.0/)

---

### Acknowledgments

This repository contains educational content originally developed by Fredrik Svensson and Oliver Scott as part of the MEDC0080 module. The materials have been revised, expanded, and updated by Florion Peni in 2025.

The code and teaching content may contain adaptations from external examples and publicly available resources. Where possible, attributions have been included. If you believe your work has been reused and is not properly credited, please contact us so we can correct it.

This tutorial makes use of the following open-source tools:

- [`rdkit`](https://www.rdkit.org)
- [`matplotlib`](https://matplotlib.org)
