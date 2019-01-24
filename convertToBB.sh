#!/bin/bash
basedir=/usr/local/bioinf/hg19_Rloop_bedfiles/modified_bedfiles/*
chrom=/usr/local/bioinf/hg19_Rloop_bedfiles/hg19.chrom.sizes
for i in $basedir; do
	bedToBigBed -type=bed5 -tab $i $chrom $i.bb
done
