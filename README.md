# Microbiome Analysis Using R

Thanks to Joey McMurdie [@joey711](https://github.com/joey711), Ben Callahan [benjjneb](https://github.com/benjjneb) and Mike Mclaren [mmclaren42](https://github.com/mmclaren42) for assisting with the original preparation of materials.

This material has sense been taught at:

1) Universidad de los Andes, Bogotá, Colombia (3-7 December, 2018)
2) University KwaZulu-Natal, Durban, South Africa (8-12 October, 2018)
2) Workshop on Genomics, Cesky Krumlov, Czech Republic (5-18 January, 2020)

# Background
These materials are intended to provide an overview of the basic principles underlying microbiome analysis using R. The materials are a mash-up of stuff we use in research, but also some contrived examples we have found useful for teaching purposes. So if some of the code seems silly or verbose it is probably there for a reason only clear when teaching.

The data originate from a study on the bacterial microbiome of mice treated with or without antibiotics to test the affects of the microbiome on flavivirus infection (https://www.ncbi.nlm.nih.gov/PubMed/29590614).

# Overview
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
