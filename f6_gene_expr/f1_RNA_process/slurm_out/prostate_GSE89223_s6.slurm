#!/bin/bash
#SBATCH -n 4
#SBATCH --mem=40000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o prostate_GSE89223_s6.out 

salmon quant --gcBias -i /nv/vol190/zanglab/zw5j/data/index/salmon_index/hg38_v92 -l A -r \
/nv/vol190/zanglab/zw5j/projects_data/T_ALL_CTCF_panos/Public/RNA-seq_new_201907/prostate_GSE89223_s6.fastq.gz -p 8 -o /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f6_gene_expr/f1_RNA_process/salmon_quant/prostate_GSE89223_s6 
