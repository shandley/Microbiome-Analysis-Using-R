# Install all packages needed for the workshop in a new RStudio Cloud Project

# CRAN packages
install.packages(c("data.table", "gridExtra", "knitr", "plyr",
                   "plotly", "ggpubr", "tidyverse", "vegan"))

# Bioconductor packages
source("https://bioconductor.org/biocLite.R")
biocLite(c("dada2", "DESeq2", "microbiome", "phyloseq"))
