#!/bin/bash
#PBS -l ncpus=6
#PBS -l mem=256GB
#PBS -l jobfs=200GB
#PBS -q hugemembw
#PBS -P w09
#PBS -l walltime=18:00:00
#PBS -l storage=gdata/w09
#PBS -l wd
#PBS -M u7018753@anu.edu.au
#PBS -m abe

module load python3/3.10.4
source /g/data/w09/bw5016/python-environments/hons_3.10.4/bin/activate

#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 4_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714755370
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 4_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714755284
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 4_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714755240

#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 6_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714213866
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 6_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714213968
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 6_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714213978

#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 8_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714698023
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 8_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714702606
#python3 ../reconstruct.py --simulation_path /home/659/bw5016/honours-project/data/generation/simulation_results/ --voxel_path /home/659/bw5016/honours-project/data/generation --pack 8_1 --mmap_path /home/659/bw5016/honours-project/data/generation/reconstruction --n_cores 6 --mmap_shape '(5000, 2500, 2500)' --mmap_padding '(500, 500, 500)' --simulation_id 1714725355
