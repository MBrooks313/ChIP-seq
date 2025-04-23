#!/usr/bin/bash

# module load ucsc


echo "BW merge H3K18la_5mM..."
bigWigMerge \
H3K18La_5mM_R1.bigWig \
H3K18La_5mM_R1.bigWig \
H3K18La_5mM_R1.bigWig \
H3K18La_5mM.bedGraph 

echo "BW convert H3K18la_5mM..."

fai="/Volumes/data/People/brooksma/PEGASUS/Projects/Genomes/Mus_musculus/NCBI/GRCm38/Sequence/WholeGenomeFasta/genome.fa.fai"

bedGraphToBigWig H3K18La_5mM.bedGraph $fai H3K18La_5mM.bigWig




echo "BW merge H3K18la_25mM..."
bigWigMerge \
H3K18La_25mM_R1.bigWig \
H3K18La_25mM_R1.bigWig \
H3K18La_25mM_R1.bigWig \
H3K18La_25mM.bedGraph 

echo "BW convert H3K18la_25mM..."

fai="/Volumes/data/People/brooksma/PEGASUS/Projects/Genomes/Mus_musculus/NCBI/GRCm38/Sequence/WholeGenomeFasta/genome.fa.fai"

bedGraphToBigWig H3K18La_25mM.bedGraph $fai H3K18La_25mM.bigWig



echo "BW merge H3K27ac_5mM..."
bigWigMerge \
H3K27ac_5mM_R1.bigWig \
H3K27ac_5mM_R1.bigWig \
H3K27ac_5mM.bedGraph 

echo "BW convert H3K27ac_5mM..."

fai="/Volumes/data/People/brooksma/PEGASUS/Projects/Genomes/Mus_musculus/NCBI/GRCm38/Sequence/WholeGenomeFasta/genome.fa.fai"

bedGraphToBigWig H3K27ac_5mM.bedGraph $fai H3K27ac_5mM.bigWig




echo "BW merge H3K27ac_25mM..."
bigWigMerge \
H3K27ac_25mM_R1.bigWig \
H3K27ac_25mM_R1.bigWig \
H3K27ac_25mM.bedGraph 

echo "BW convert H3K27ac_25mM..."

fai="/Volumes/data/People/brooksma/PEGASUS/Projects/Genomes/Mus_musculus/NCBI/GRCm38/Sequence/WholeGenomeFasta/genome.fa.fai"

bedGraphToBigWig H3K27ac_25mM.bedGraph $fai H3K27ac_25mM.bigWig