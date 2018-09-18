library(knitr)
library(tidyverse)
library(httr)
library(oai)
library(xml2)


#this reads in the data frame from an osf project
my_data<-read.csv("https://osf.io/4zbx2/download")

#calculate the mean Brain Volume size and sd for each gender


#plotting
#create two boxplots for brain volume for males and females



#calculate a new variable in my_data that gives the  BRAIN_VOLUME normalised for HEAD_SIZE


#same plot as above only give relative Brain Volume corrected for Head size



