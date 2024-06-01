import numpy as np
import os
from tqdm import tqdm
import pandas as pd
import trimesh as tri
from multiprocessing import Pool
from functools import partial


def process(mask_path, mask_files, mesh_path, mesh_files, i):
    particle_size = np.sum(np.load(os.path.join(mask_path, mask_files[i])))
    w, h, d = sorted(tri.bounds.oriented_bounds(tri.load(os.path.join(mesh_path, mesh_files[i])))[1])
    return [mask_files[i][:4], particle_size, w, h, d]


def tomo_to_metadata(dataset_name, n_workers=8):
    mask_path = f'/home/659/bw5016/honours-project/data/generation/mask/{dataset_name}/'
    mask_files = os.listdir(mask_path)
    mesh_path = f'/home/659/bw5016/honours-project/data/generation/mesh/{dataset_name}/'
    mesh_files = os.listdir(mesh_path)
    metadata_df = pd.DataFrame(columns=['name', 'size', 'w', 'h', 'd'])
    with Pool(n_workers) as p:
        part = partial(process, mask_path, mask_files, mesh_path, mesh_files)
        results = list(tqdm(p.imap(part, range(len(mask_files))), total=len(mask_files)))   
    for result in results:
        metadata_df.loc[len(metadata_df)] = result
    return metadata_df


def update_size_label(df):
    def _classify_size(size):
        if size < quantiles.iloc[0]:
            return 's'
        elif size < quantiles.iloc[1]:
            return 'm'
        else:
            return 'l'
    quantiles = df['size'].quantile([0.33, 0.66])
    df['size_label'] = df['size'].apply(_classify_size)
    return df.sort_values(by='name')


def save_metadata(dataset_name, n_workers=8):
    save_path = f'/home/659/bw5016/honours-project/data/generation/metadata/{dataset_name}/'
    os.makedirs(save_path, exist_ok=True)
    update_size_label(tomo_to_metadata(dataset_name, n_workers)).to_csv(os.path.join(save_path, f'{dataset_name}.csv'), index=False)


def main():
    save_metadata('4_1')
    save_metadata('4_250')
    save_metadata('6_1')
    save_metadata('6_250')
    save_metadata('8_1')
    save_metadata('8_250')


if __name__ == '__main__':
    main()