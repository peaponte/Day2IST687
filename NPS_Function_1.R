#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
dfClean <- read.csv('LTR_Data.csv')
####################################

## start writing your R code from here
NPSfunction <- function(dfClean)
{
  #Promoters are numbers of 9 or 10
  Promoters <- sum(dfClean$Likelihood_Recommend_H > 8)
  Promoters
  #Detractors are numbers of 6 or less
  Detractors <- sum(dfClean$Likelihood_Recommend_H<7)
  
  #Find percent promotors
  PercentPromoters <- Promoters/length(dfClean$Likelihood_Recommend_H)
  
  #Find percent detractors
  PercentDetractors <- Detractors/length(dfClean$Likelihood_Recommend_H)
  
  #NPS calculation then round number and convert to percent
  NPS <- PercentPromoters - PercentDetractors
  format(round(NPS*100,2))
}
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'NPS_Data_Part_D.csv')
####################################



