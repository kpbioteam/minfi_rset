
require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

MSet <- get(load(input))

RSet <- ratioConvert(MSet, what = "both", keepCN = TRUE)

save(RSet,file = output)

