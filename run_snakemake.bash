#!/bin/bash

snakemake -j 10 \
	--configfile /home/leej39/Diamond_Search/config.yml \
	--cluster-config /home/leej39/Diamond_Search/cluster.json \
	-w 90 \
	--notemp \
	-p \
	-c \
	"qsub -cwd -r n -V -l h_vmem={cluster.h_vmem} -l mem_free={cluster.mem_free} -pe smp {threads}" \
	-n
