#!/bin/bash

#Problem 2
#2A
echo "#==SCRIPT STARTED"

#2B
cd "C:\Users\samst\Desktop\PhD Materials\BioInf575\HW1" #insert parent directory
sed -n '2p;6p;10p;14p;18p;22p' sample.fastq > sample_rseq.txt
sed -n '2p;6p;10p;14p;18p;22p' sample_cutadapt.fastq > sample_cutadapt_rseq.txt

#2C
echo "#== RETRIEVE READ SEQUENCE DONE"

#2D
sed 's/AGATCGGAAGAGC.*//' test1.txt | sed '5,6d' > sample_rseq_CUT.txt

#2E
echo "#==CUT ADAPTER DONE"

#2F
diff sample_rseq_CUT.txt sample_cutadapt_rseq.txt

#2G
echo "#==SCRIPT DONE"

