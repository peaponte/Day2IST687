#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LTR_Data_E_1.csv')
####################################

## start writing your R code from here
#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

## start writing your R code from here
LoSfunction <- function(dfClean)
{
  dfClean <- dfClean[!is.na(dfClean$LENGTH_OF_STAY_C), ]
  index <- which(dfClean$LENGTH_OF_STAY_C < 2 )
  dfnew<-dfClean[index, ]
  
  #Promoters are numbers greater than 8
  Promoters <- sum(dfnew$Likelihood_Recommend_H > 8)
  Promoters
  
  #Detractors are numbers of 6 or less
  Detractors <- sum(dfnew$Likelihood_Recommend_H<7)
  Detractors
  
  #Find percent promotors
  PercentPromoters <- Promoters/length(dfnew$Likelihood_Recommend_H)
  
  #Find percent detractors
  PercentDetractors <- Detractors/length(dfnew$Likelihood_Recommend_H)
  
  #NPS calculation then round number and convert to percent
  NPS <- PercentPromoters - PercentDetractors
  V <- format(round(NPS*100))
  return(V)
}
LoSL <- LoSfunction(dfClean)

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'NPS_Data_Part_D.csv')
####################################




## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'NPS_Data_Part_D.csv')
####################################











