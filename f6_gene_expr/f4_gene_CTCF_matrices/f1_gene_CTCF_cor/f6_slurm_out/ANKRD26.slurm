#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o ANKRD26.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD26 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD26P1 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD26P3 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD27 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD28 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ANKRD29 
