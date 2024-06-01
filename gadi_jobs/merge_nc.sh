#!/bin/bash
#PBS -l ncpus=1
#PBS -l mem=80GB
#PBS -l jobfs=200GB
#PBS -q normalbw
#PBS -P w09
#PBS -l walltime=04:00:00
#PBS -l storage=gdata/w09
#PBS -l wd

module load python3/3.10.4
source /g/data/w09/bw5016/python-packages/hons_3.10.4/bin/activate


#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/4_1/tomoHiRes_MM_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/4_1 --key tomo --blocks 142
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/4_250/tomoHiRes_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/4_250 --key tomo --blocks 71
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/6_1/tomoHiRes_MM_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/6_1 --key tomo --blocks 81
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/6_250/tomoHiRes_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/6_250 --key tomo --blocks 61
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/8_1/tomoHiRes_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/8_1 --key tomo --blocks 76
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/8_250/tomoHiRes_MM_GM_SS_AC_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/tomo/8_250 --key tomo --blocks 70

# Masks
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/4_1/labelsHiRes_MM_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_MV_MV_EL_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/4_1 --key labels --blocks 142
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/4_250/labelsHiRes_GM_SS_AC_CAC_EDT_WST_RM1_5_RSC_MCL_MV_MV_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/4_250 --key labels --blocks 71
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/6_1/labelsHiRes_MM_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_MV_MV_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/6_1 --key labels --blocks 81
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/6_250/labelsHiRes_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_MV_MV_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/6_250 --key labels --blocks 61
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/8_1/labelsHiRes_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_MV_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/8_1 --key labels --blocks 76
#python3 ../merge_nc.py --in_dir /g/data/w09/bw5016/honours-data/8_250/labelsHiRes_MM_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_MV_EL_MCL_nc --out_dir /home/659/bw5016/honours-project/0_data/0_raw_data/mask/8_250 --key labels --blocks 70

#python3 ../merge_nc.py --in_dir "/g/data/w09/ab1228/RTScott/1190502_GOH_8_morethan250microns/data/labelsHiRes_MM_GM_SS_AC_CAC_EDT_WST_nc" --out_dir "/home/659/bw5016/bw5016/honours-data/evaluation/watershed/8_250" --key labels --blocks 70
#python3 ../merge_nc.py --in_dir "/g/data/w09/ab1228/RTScott/1190502_HGF_4_morethan1mm/labelsHiRes_MM_GM_SS_AC_CAC_EDT_WST_RM_RSC_MCL_nc" --out_dir "/home/659/bw5016/bw5016/honours-data/evaluation/watershed/4_1" --key labels --blocks 142
#python3 ../merge_nc.py --in_dir "/g/data/w09/ab1228/RTScott/1190502_HGF_4_morethan250microns/data/labelsHiRes_GM_SS_AC_CAC_EDT_WST_RM1_5_RSC_MCL_nc" --out_dir "/home/659/bw5016/bw5016/honours-data/evaluation/watershed/4_250" --key labels --blocks 71
