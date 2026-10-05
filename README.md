# Leveraging-LMs-towards-Generalisable-DR-Explanation-Generation

Diogo Venes' thesis - Leveraging Language Models towards Generalisable Drug Repurposing Explanation Generation

This repository contains the files and necessary instructions to replicate the experiments outlined in the thesis described above.

## Guide to run the system

### Prerequisites
- UV installed on your machine. Any necessary dependencies will be automatically installed when you run the approach for the first time. For more information on UV, please check the [UV documentation](https://docs.astral.sh/uv/getting-started/installation/).

### Datasets
The datasets used in the experiments are:
- Hetionet (https://github.com/hetio/hetionet)
- OREGANO (https://gitub.u-bordeaux.fr/erias/oregano)
- PrimeKG (https://github.com/mims-harvard/PrimeKG)
The "mega graph" datasets were created manually using entity mapping correspondences done using CHEBI (https://www.ebi.ac.uk/chebi/) and DOID (https://disease-ontology.org/)

### Running and replicating experiments
The basic command used to run an experiment will be something like:
