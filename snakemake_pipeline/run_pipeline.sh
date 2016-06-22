#!/bin/bash

TOTAL_THREADS=${1:-24}

/mnt/projects/rpd/apps.testing/miniconda3/envs/snakemake-3.7.1/bin/snakemake  --configfile conf.yaml -p -T --snakefile ~lich/projects_backup/metagenomics_pipeline/snakemake_pipeline/Snakefile -j $TOTAL_THREADS --drmaa ' -pe OpenMP {threads} -l {params.resource} -V -b y -cwd -w n'
