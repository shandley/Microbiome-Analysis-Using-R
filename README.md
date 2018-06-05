# 2018 ASM Workshop *"Microbiome Analysis Using R"*

# Background

The ASM Workshop on *"Microbiome Analysis Using R" is intended to provide an overview of the basic principles underlying microbiome analysis. While the focus will be on the practical aspects of using R to complete this analysis, discussion on best practices, study design and ecological analysis will be discussed.

A significant component of the Workshop will revolve around a simple case-study which examines the time-series response of enteric bacterial communities to several different antibiotic treatments.

An overview of the analysis steps implemented:

1) Environment initiation
2) Read in your data and select samples for analysis
3) Variable examination and modification
4) Data summary and assessment
5) Taxon prevalence estimations and filtering
6) Data transformation
7) Subsetting
8) Community composition plotting
9) Alpha diversity analysis
10) Beta diversity analysis
11) Differential abundance testing

The data originate from a study on the bacterial microbiome of mice treated with or without antibiotics to test the affects of the microbiome on flavivirus infection (https://www.ncbi.nlm.nih.gov/PubMed/29590614).

# Install required R packages

Extensions to R in the form of purpose-specific packages
must be installed prior to loading them in your R sessions.
Installation can be accomplished within an R session,
or by calling an R script that already defines the installation commands.

## R

Open and run the following R script (or execute it from the command line):

`install.R`

## Docker

Alternatively, you can [install docker](https://docs.docker.com/install/),
and then run our everything-installed-already docker container
via the following command:

```
sudo docker run --rm -p 8787:8787 joey711/2018asm
```

If there were now errors and your terminal cursor is sitting idle, 
it means the container was successfully downloaded 
and is now running RStudio for you in the background.
Go to this local browser location to begin working in RStudio:

```
0.0.0.0:8787
```
