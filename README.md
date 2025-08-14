# Struct3D-LLM

## Setup and Usage

### 1. Prepare the Environment
```bash
conda create -n struct3dllm python=3.9.17
conda activate struct3dllm
conda install pytorch==2.2.1 torchvision==0.17.1 torchaudio==2.2.1 pytorch-cuda=11.8 -c pytorch -c nvidia
pip install -r requirements.txt
```

---

### 2. Download LLM Backbone
We use **LLaMA 3 8B Instruct** in our experiments, which can be downloaded from:  
[Hugging Face - Meta-Llama-3-8B-Instruct](https://huggingface.co/meta-llama/Meta-Llama-3-8B-Instruct)  


---

### 3. Download the Pre-processed Dataset
The pre-processed dataset used in our experiments can be accessed via the following **anonymized OSF link**.  
This link hides contributor information to comply with the double-blind review policy:  

https://osf.io/2a4hp/?view_only=5b4741fa2e3e4c219bee55972d1115dc

---

### 4. Training and Evaluation
After downloading and placing the dataset in the appropriate directory, you can start training and validation by executing:  
```bash
bash scripts/run.sh
```

---





-
