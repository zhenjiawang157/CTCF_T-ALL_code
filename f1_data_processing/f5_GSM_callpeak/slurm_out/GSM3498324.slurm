#!/bin/bash
#SBATCH -n 4
#SBATCH --mem=20000
#SBATCH -t 24:00:00
#SBATCH -p standard
#SBATCH -A zanglab
#SBATCH -o slurm_out/GSM3498324.out 

module load bwa
module load samtools

bwa aln  -q 5 -l 32 -k 2 -t 8 /scratch/zw5j/data/index/bwa_index/hg38/hg38.fa /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f3_fq_files/GSM3498324.fastq.gz > /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.sai
bwa samse /scratch/zw5j/data/index/bwa_index/hg38/hg38.fa /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.sai /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f3_fq_files/GSM3498324.fastq.gz > /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.sam
samtools view -bS -q 1 -@ 8 /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.sam > /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.bam

macs2 callpeak --SPMR -B -q 0.01 --keep-dup 1 -g hs -t \
/nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324.bam -n /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324

bdg2bw /nv/vol190/zanglab/zw5j/work2017/T_ALL_CTCF/updated_201906/f1_data_processing/f5_GSM_callpeak/GSM_callpeak_out/GSM3498324/GSM3498324_treat_pileup.bdg /nv/vol190/zanglab/zw5j/data/Genome/hg38/hg38.chrom.sizes

python 2_chipseq_qc_se_macs2_tags_no_reps.py -i name_list_chipseq_se.txt -o slurm_out/GSM3498324_qc.log -s hg38 -b GSM3498324 -f .fastq.gz