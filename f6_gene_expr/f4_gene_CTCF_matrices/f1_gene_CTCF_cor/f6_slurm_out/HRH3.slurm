#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o HRH3.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i HRH3 
time python ../7_cor_CTCF_binding_GeneExpr.py -i HRH4 
time python ../7_cor_CTCF_binding_GeneExpr.py -i HRK 
time python ../7_cor_CTCF_binding_GeneExpr.py -i HRNR 
time python ../7_cor_CTCF_binding_GeneExpr.py -i HS1BP3 
time python ../7_cor_CTCF_binding_GeneExpr.py -i HS2ST1 
