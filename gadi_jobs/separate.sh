#!/bin/bash
#PBS -l ncpus=14
#PBS -l mem=500GB
#PBS -l jobfs=200GB
#PBS -q hugemembw
#PBS -P w09
#PBS -l walltime=02:00:00
#PBS -l storage=gdata/w09
#PBS -l wd

module load python3/3.10.4
source /g/data/w09/bw5016/python-packages/hons_3.10.4/bin/activate

python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack toy --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 4_1 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 4_250 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 6_1 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 6_250 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 8_1 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
#python3 ../separate.py --in_dir /home/659/bw5016/honours-project/0_data/0_raw_data/ --pack 8_250 --out_dir /home/659/bw5016/honours-project/0_data/1_simulation/ --voxel_scale 0.5 --mesh_scale 0.2 --n_cores 8
