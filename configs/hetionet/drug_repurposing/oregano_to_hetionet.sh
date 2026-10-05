#!/usr/bin/env bash
data_input_dir="datasets/hetionet/drug_repurposing/"
vocab_dir="datasets/hetionet/drug_repurposing/vocab"
total_iterations=200
path_length=3
hidden_size=32
embedding_size=32
batch_size=64
learning_rate=0.0006
beta=0.05
num_rollouts=28
LSTM_layers=2
base_output_dir="output/hetionet/drug_repurposing/neutral_evaluator"
Lambda=0.02
eval_every=10
use_entity_embeddings=1
train_entity_embeddings=0
train_relation_embeddings=0
max_num_actions=400
early_stopping=1
agentic_ai_enabled=0
IC_reward=1
load_model=1
# Change this line to the path of the model you want to load
model_load_dir="output/oregano/drug_repurposing/neutral_evaluator/07-08_10:39:51/model/best_ckpt.json"
embeddings_dir="embeddings/hetionet/drug_repurposing"

persona_path=None
viz_mode=0

# =========================
# Experiment parameters:
# =========================

graph_file="graph.txt"
input_file="train.txt"
dev_file="dev.txt"
IC_file="clustered_IC_classes_edgeType.json"
entity_embeddings_file="entity_embeddings_llm.pt"
relation_embeddings_file="relation_embeddings.pt"