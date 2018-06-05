# 2018 ASM Workshop "Microbiome Analysis Using R"

# Background

Generalized workflow for processing 16S rRNA gene amplicon data. Each R chunk represents a specific analysis type.

The code chunks perform the following functions:

1) Environment inititation
2) Data loading
3) Variable examination and modification
4) Data assessment
5) Taxon prevalence estimations and filtering
6) Data transformation
7) Subsetting
8) Community composition plotting
9) Alpha diversity analysis
10) Beta diversity analysis
11) Differential abundance testing

The data originate from a study on the bacterial microbiome of mice treated with or without antibiotics to test the affects of the microbiome on flavivirus infection (https://www.ncbi.nlm.nih.gov/pubmed/29590614). Sequence data was generated from extracted nucleic acid from stool samples collected from individually caged mice and amplified using primers specific for the V4 region using primers 515F/806R.

The study followed flavivirus infection after the following treatments:

1) Koolaid: Antibiotics are provided to the mice via their drinking water. As many of the antibiotics taste bad, koolaid is added as a sweetener. Therefore, the appropriate control is water spike with koolaid.
2) Ampicillin (Amp): https://en.wikipedia.org/wiki/Ampicillin
3) Metronidazole (Met): https://en.wikipedia.org/wiki/Metronidazole
4) Ampicillin + Metronidazole (Amp+Metro)

Treatments was supplied for 2 weeks prior to viral infection and maintained for 2 weeks post-infection. Primary outcome was mouse survival. Each antibiotic treatment group had two subgroups of mice that were either a) left uninfected as controls or b) infected with West Nile Virus via a subcutaneous footpad injection.

## Data organization:

There is no single way to organize your data, but it is good practice to develop a standard for file storage and naming. An well thought out organization structure will make coding your analysis easier, enable you to more easily return to your data after leaving it for a period of time and facilitate publication of your data.

The organizational scheme for this workshop is as follow:

General rules for file naming and organization:

1) Special characters and spaces in file or directory names other than _ and - are evil
2) Naming parity is useful. For example, if you have a data object called 16S_analysis.RDS, then it would be helpful to have the same prefix for associated files (e.g. 16S_mapping.txt, 16S_data.RmD, 16S_project.RProj)

For the purposes of this Workshop we have arranged directories and files as follows:

1) All files are in the base directory called /2018_ASM_Workshop/
2) Primary data files are in /data/
3) Analysis files (typically RMarkdown documents) are in /analysis/
3) Results are in /results/
4) Figures are in /figures/


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
