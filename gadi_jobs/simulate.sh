#!/bin/bash
#PBS -l ncpus=28
#PBS -l mem=128GB
#PBS -l jobfs=200GB
#PBS -q normalbw
#PBS -P w09
#PBS -l walltime=02:00:00
#PBS -l storage=gdata/w09
#PBS -l wd

module load blender/3.3.4

# Please note that: below simulation doesn't added any randomness, to add randomness, append `-s seed`.
blender --background --python /home/659/bw5016/honours-project/1_simulation/simulate.py  -- -i /home/659/bw5016/honours-project/0_data/1_simulation/mesh/toy/ -o /home/659/bw5016/honours-project/0_data/1_simulation/simulation/ -r 50 -c 200 -n 45 -b 1 -f 500

# Hi Philipp, comment above and change below script
#blender --background --python /your-path-to/simulate.py  -- -i /g/data/w09/bw5016/honours-data/1_simulation/mesh/toy/ -o /g/data/w09/bw5016/honours-data/1_simulation/simulation -r 50 -c 200 -n 45 -b 1 -f 500 -s 42
