#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o CD5.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i CD5 
time python ../7_cor_CTCF_binding_GeneExpr.py -i CD52 
time python ../7_cor_CTCF_binding_GeneExpr.py -i CD53 
time python ../7_cor_CTCF_binding_GeneExpr.py -i CD55 
time python ../7_cor_CTCF_binding_GeneExpr.py -i CD58 
time python ../7_cor_CTCF_binding_GeneExpr.py -i CD59 
