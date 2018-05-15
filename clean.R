#####################################
##### Do NOT delete this block #####
#setwd(Sys.getenv('PROJECT_HOME'))
setwd('C:/Users/Alex/stigmergy/Day2IST687')
getwd()
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('raw_data.csv')
####################################

## start writing your R code from here

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'data.csv')
####################################

