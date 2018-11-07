#!/usr/bin/env nextflow

fastqs = Channel.fromPath("$baseDir/fastqs/*.fastq.gz").collect()

process fastqc_raw {
    cpus 3
    publishDir "$baseDir/fastqc_out"

    input:
    file fastqs

    output:
    file '*' into fastqc_out

    script:
    """
    #!/bin/ash
    
    ls -l
    """
}