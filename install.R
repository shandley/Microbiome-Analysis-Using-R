
# Use Bioconductor to install packages
source("https://bioconductor.org/biocLite.R")
deppkgs <-
  c(
    "tidyverse",
    "plyr",
    "gridExtra",
    "knitr",
    "plotly",
    "ggpubr",
    "data.table",
    "microbiome",
    "vegan",
    "DESeq2",
    "phyloseq",
    "dada2"
  )

biocLite(deppkgs, suppressUpdates = TRUE)
message(packageVersion("dada2"))
message(packageVersion("DESeq2"))
message(packageVersion("phyloseq"))
