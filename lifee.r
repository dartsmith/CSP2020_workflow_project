# Name: lifee.r
#       Animal LIfe Expectancy Project
# Author: Melissa Smith
# Date: Feb 22, 2020
# Purpose: Learn how to use Github
#          Analyze animal life expectance

# Plan:
#   1) Count number of animals in each taxa
#   2) Find average lifespan for each species
#   3) Find average lifespan for each species, male and female separately
#   4) Find species that has larges male/female diff
#   5) Find average lifespan for each taxa, male and female separately
#   6) Find taxa with largest male/female diff

adata <- read.csv("~/Work/R Practice/CSP Workshop 2020/CSP2020_workflow_project/zooAnimal_medianLifeExpectancy_Jul2018 .csv")

#   1) Count number of animals in each taxa
table(adata$TaxonClass)

#   2) Find average lifespan for each species
means.species <- tapply(adata$Overall.MLE, adata$Species.Common.Name, mean, na.rm=TRUE)
means.species

#   3) Find average lifespan for each species, male and female separately
means.taxa <- tapply(adata$Overall.MLE, adata$TaxonClass, mean, na.rm=TRUE)
means.taxa

#   4) Find species that has larges male/female diff
boxplot(adata$Overall.MLE ~ adata$TaxonClass)

means.taxa.m <- tapply(adata$Male.MLE, adata$TaxonClass, na.rm=TRUE)
means.taxa.m

table(adata$TaxonClass)

