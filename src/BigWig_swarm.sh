#!/bin/bash


dir_bam="/data/brooksma/NRL_L75Pfs/CutTag/reBigWig/bam"
dir_bw="/data/brooksma/NRL_L75Pfs/CutTag/reBigWig/bigwig"

#https://deeptools.readthedocs.io/en/latest/content/feature/effectiveGenomeSize.html
size=2805636231 
blklist="/data/brooksma/Index/Blacklists/v3/hg38-blacklist.v3.bed"


declare -a bam
bam=($dir_bam/*.bam)


for (( i=0 ; i < ${#bam[@]} ; i++ ))
do
base=${bam[$i]%.bam}
base=${base##*/}

echo $base

echo "module load deeptools; \
bamCoverage \
    --bam ${dir_bam}/${base}.bam \
    -o ${dir_bw}/${base}_SeqDepthNorm.bw \
    --binSize 10 \
    --normalizeUsing RPGC \
    --effectiveGenomeSize $size \
    --ignoreForNormalization chrX \
    --blackListFileName $blklist \
    --ignoreDuplicates \
    --extendReads \
    -p 12" >> BigWig.swarm
done