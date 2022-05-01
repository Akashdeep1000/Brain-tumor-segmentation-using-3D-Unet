#!/bin/bash
#SBATCH --gpus=1
#SBATCH --cpus-per-gpu=4
#SBATCH --gres-flags=enforce-binding
#SBATCH --time=32:00:00
#SBATCH --job-name=BTS
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user akashdeep26@knights.ucf.edu

module load cuda/cuda-11.4
module load gcc/gcc-11.2.0
#python3 -m pip install --upgrade pip --user
#python3 -m pip install split-folders --user
#python3 -m pip install numpy --user
#python3 -m pip install scikit-learn --user
#python3 -m pip install monai --user
#python3 -m pip install matplotlib --user
#python3 -m pip install nibabel --user
#python3 -m pip install scikit-image --user
#python3 -m pip install tensorflow==2.6.2 --upgrade  --user
#python3 -m pip install pandas --user
#python3 -m pip install keras --user
#python3 -m pip install segmentation-models-3D --user

#tar -xzvf Brats2020.tar.gz

python3 preprocessing.py

python3 custom_datagen.py

python3 Unet_3D.py

python3 training_k_fold.py

python3 met_eval.py

