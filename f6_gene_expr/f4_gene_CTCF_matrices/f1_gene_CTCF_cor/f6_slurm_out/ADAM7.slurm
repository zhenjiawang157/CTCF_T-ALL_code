#!/bin/bash

#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o ADAM7.out

time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAM7 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAM8 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAM9 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAMDEC1 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAMTS1 
time python ../7_cor_CTCF_binding_GeneExpr.py -i ADAMTS10 
