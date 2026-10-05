#!/bin/bash
#SBATCH --job-name=transferex
#SBATCH --output=aa_hpkgrex_CORRECTMAPPINGS_H_to_P_2.out
#SBATCH --partition=gpu
#SBATCH --nodelist=liseda-03

uv run bash run.sh configs/primekg/drug_repurposing/neutral_evaluator.sh
