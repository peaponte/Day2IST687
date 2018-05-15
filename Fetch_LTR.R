#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
dfclean <- read.csv('cleandata.csv')
####################################

## start writing your R code from here
dfClean$Likelihood_Recommend_H
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'LTR_Data.csv')
####################################




