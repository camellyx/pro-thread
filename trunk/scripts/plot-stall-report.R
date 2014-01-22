#!/usr/bin/Rscript

args <- commandArgs(TRUE)

table <- read.table(args[1])

#heip <- hist(table$V4, breaks=12, col="black")
#plot(deip)

darr <- density(table$V1)
plot(darr)
