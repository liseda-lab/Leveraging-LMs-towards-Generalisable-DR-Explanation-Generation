# TO-DO
- Sort out datasets and embedding folders as they are large file uploads (scp download from cluster or github link)
- Rename embedding files to have descriptive names
- Add all auxilliary util files and parallel experiments that still need to be cleaned up

# Leveraging-LMs-towards-Generalisable-DR-Explanation-Generation

Diogo Venes' thesis - Leveraging Language Models towards Generalisable Drug Repurposing Explanation Generation

This repository contains the files and necessary instructions to replicate the experiments outlined in the thesis described above.

## Datasets
The datasets used in the experiments are:
- Hetionet (https://github.com/hetio/hetionet)
- OREGANO (https://gitub.u-bordeaux.fr/erias/oregano)
- PrimeKG (https://github.com/mims-harvard/PrimeKG)
- MegaHetionet (MegaH) and MegaOregano (MegaO) both consist of the same graph file, being the merger of the Hetionet and OREGANO graphs. They differ in the train/dev/test files, with MegaH having the original Hetionet pairs and MegaO having the original Oregano pairs. These "mega graph" datasets were created manually using entity mapping correspondences done using CHEBI (https://www.ebi.ac.uk/chebi/) and DOID (https://disease-ontology.org/)

## Guide to run the system

### Prerequisites
- UV installed on your machine. Any necessary dependencies will be automatically installed when you run the approach for the first time. For more information on UV, please check the [UV documentation](https://docs.astral.sh/uv/getting-started/installation/).

### Running
The basic command used to run an experiment will be something like:

```sh
uv run bash run.sh configs/{dataset}/{task}/{setup}
```

For example, to train and test a Hetionet model, run:

```sh
uv run bash run.sh configs/hetionet/drug_repurposing/hetionet_train.sh
```

To test a previously trained OREGANO model on Hetionet, run:

```sh
uv run bash run.sh configs/hetionet/drug_repurposing/oregano_to_hetionet.sh
```

After altering the corresponding config file by specifying the file path of the saved model you wish to use, specifically pointing to the ```best_ckpt.json```:
```sh
# Change this line to the path of the model you want to load
model_load_dir="output/oregano/drug_repurposing/neutral_evaluator//07-08_10:39:51/model/best_ckpt.json"
```
### Replicating experiments
To replicate the experiments, simply alter the Experiment parameters part of the config file of the dataset-task-setup combination of your choosing.
For example, to use the normalised graph, replace the line:

```sh
graph_file="graph.txt"
```

With:


```sh
graph_file="graph_normalised.txt"
```

To use the sigmoid-normalised IC scores, replace the line:

```sh
IC_file="clustered_IC_classes_edgeType.json"
```

With:

```sh
IC_file="clustered_IC_classes_edgeType_sig.json"
```

The possible list of parameters is as follows:
- Graph type
  - "graph.txt", "graph_normalised.txt"
- IC type
  - "clustered_IC_classes_edgeType.json" and "clustered_IC_classes_edgeType_sig.json"
- Entity embedding type
  - "entity_embeddings.pt", "entity_embeddings_nbg.pt", "entity_embeddings_icnbg.pt" and "entity_embeddings_mappings.pt"
- Train and dev files
  - "{train/dev}.txt" and "{train/dev}{20/50}pct.txt"

Please keep in mind that some combinations of experimental parameters may result in incompatibilities, and as such it is recommended that only the specific combinations of experimental paramteres outlined in the thesis be replicated.
