FROM rocker/tidyverse:3.5.0

## Use Bioconductor to install packages
## try http:// if https:// URLs are not supported
RUN R -e 'source("https://bioconductor.org/biocLite.R")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("plyr")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("gridExtra")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("knitr")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("plotly")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("ggpubr")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("data.table")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("microbiome")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("vegan")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("DESeq2")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("phyloseq")'
RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("dada2")'

# Check versions
RUN R -e 'packageVersion("dada2")'
RUN R -e 'packageVersion("DESeq2")'
RUN R -e 'packageVersion("phyloseq")'

# Add course materials
ADD README.md /home/rstudio/README.md
ADD analysis /home/rstudio/analysis
ADD data /home/rstudio/data
ADD results /home/rstudio/results

EXPOSE 8787

RUN R -e 'message("Go to this local browser location to begin working in RStudio: 0.0.0.0:8787")'

# -v ~/Downloads/:/home/rstudio/Downloads/
# sudo docker run --rm -p 8787:8787 2018asm
CMD ["/init"]