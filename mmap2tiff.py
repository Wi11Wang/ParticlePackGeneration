# FIXME: REFACTOR THIS
import platform
import os

if 'nci' in platform.release():
    os.chdir('/home/659/bw5016/honours-project/generation/')
import sys
sys.path.append('..')

import argparse
from utils import ParticlePackDataset
import numpy as np
from tifffile import imwrite


def _parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--in_dir', type=str, required=True,
                        metavar='path', help='path to the memory map (input)')
    parser.add_argument('--out_dir', type=str, required=True,
                        metavar='path', help='path to the TIFF file (output)')
    parser.add_argument('--x_crop', type=str, default=None,
                        metavar='start,end, (inclusive)', help='cropping the input memory in x direction, default=None')
    parser.add_argument('--y_crop', type=str, default=None,
                        metavar='start,end, (inclusive)', help='cropping the input memory in y direction, default=None')
    parser.add_argument('--z_crop', type=str, default=None,
                        metavar='start,end, (inclusive)', help='cropping the input memory in z direction, default=None')
    args = parser.parse_args()
    if args.x_crop is not None:
        slice_start, slice_end = args.x_crop.split(',').strip()
        args.x_crop = slice(int(slice_start), int(slice_end) + 1)
    if args.y_crop is not None:
        slice_start, slice_end = args.y_crop.split(',').strip()
        args.y_crop = slice(int(slice_start), int(slice_end))
    if args.z_crop is not None:
        slice_start, slice_end = args.z_crop.split(',').strip()
        args.z_crop = slice(int(slice_start), int(slice_end))
    return args


def main():
    args = _parse_args()
    memmap_in_arr = np.array(ParticlePackDataset.load_memmap(args.in_dir)[args.x_crop, args.y_crop, args.z_crop])
    imwrite(args.out_dir, memmap_in_arr)


if __name__ == "__main__":
    main()