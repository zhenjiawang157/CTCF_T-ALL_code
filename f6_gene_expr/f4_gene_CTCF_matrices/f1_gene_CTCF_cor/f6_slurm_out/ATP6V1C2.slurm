#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o ATP6V1C2.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1C2 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1D 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1E1 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1E2 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1F 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ATP6V1G1 
