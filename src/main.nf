#!/usr/bin/env nextflow

fastqs = Channel.fromPath("/home/maxh/Documents/rnaseq_example*").collect()

process fastqc_raw {
    cpus 3
    publishDir "/home/maxh/Documents/rnaseq_example/fastqc_out"

    input:
    file fastqs

    output:
    file '*' into fastqc_out

    script:
    """
    #!/bin/ash

    fastqc -t 3 --no-extract $fastqs
    """
}