#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o IL1A.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1A 
time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1B 
time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1F10 
time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1R1 
time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1R2 
time python ../7_cor_CTCF_binding_GeneExpr.py -i IL1RAP 
