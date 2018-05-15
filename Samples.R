#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('cleandata.csv')
####################################

## start writing your R code from here

#sample for 10 surveys
sample1 <- sample(df$Likelihood_Recommend_H, 10, replace=FALSE)

#NPS for these 10 serveys

#Promoters are numbers of 9 or 10
Promoters <- sum(sample1 > 8)
Promoters

#Detractors are numbers of 6 or less
Detractors <- sum(sample1<7)

#Find percent promotors
PercentPromoters <- Promoters/length(sample1)

#Find percent detractors
PercentDetractors <- Detractors/length(sample1)

#NPS calculation then round number and convert to percent
NPS <- PercentPromoters - PercentDetractors
V <- format(round(NPS*100))
V

#Sample 100 times and find the mean of all the samples taken
hist(sample2 <- replicate(10, mean(sample(df$Likelihood_Recommend_H,100))))

#Mean NPS from these samples
#Promoters are numbers of 9 or 10
Promoters <- sum(sample2 > 8)
Promoters

#Detractors are numbers of 6 or less
Detractors <- sum(sample2<7)

#Find percent promotors
PercentPromoters <- Promoters/length(sample2)

#Find percent detractors
PercentDetractors <- Detractors/length(sample2)

#NPS calculation then round number and convert to percent
NPS2 <- PercentPromoters - PercentDetractors
V2 <- format(round(NPS*100))
V2

#Sample 1000 times and find the mean of all the samples taken
hist(sample3 <- replicate(10, mean(sample(df$Likelihood_Recommend_H,1000))))

#Mean NPS from these samples
#Promoters are numbers of 9 or 10
Promoters <- sum(sample3 > 8)
Promoters

#Detractors are numbers of 6 or less
Detractors <- sum(sample3<7)

#Find percent promotors
PercentPromoters <- Promoters/length(sample3)

#Find percent detractors
PercentDetractors <- Detractors/length(sample3)

#NPS calculation then round number and convert to percent
NPS3 <- PercentPromoters - PercentDetractors
V3 <- format(round(NPS*100))
V3

#As the sample of surveys increases the mean NPS value decreases


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################


