#!/usr/bin/bash

echo "Running script to generate allele calls from PLINK data..."
python 1_plink2call.py --bfile demo/demo_cohort --mapping demo/mapping.txt
echo "Running script to generate scores from allele calls..."
python 2_cat2scores.py --cat demo/demo_cohort_cat.txt --score demo/allele_scorefile.txt 
