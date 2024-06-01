# Particle Pack Generation Program

---

## Workflow

To create synthetic data, we have the following steps:

1. Merge `.nc` files: `merge_nc.py`
2. Separate particles in a merged tomogram into individual particles: `separate.py`
3. Perform the physical simulation with Blender: `simulate.py`
4. Use the simulated result to reconstruct the simulated tomogram: `reconstruct.py`

## How to run scripts

- To run the code locally, you could follow the above workflow. 
  You could use `python3 program.py --help` to check the manual of each program.
- To run the scripts on NCI Gadi, please check folder `gadi_jobs`, comment/uncomment the line you need.

## Extra notes

- Please make sure the input and output directory be configured correctly before you run the script.
- `separate.py` takes HEAPS of memories, if you find the memory overflows, run it in serial by setting `--n_cores 0`.
- `preprocess.py` is a shared library file for other scripts.
