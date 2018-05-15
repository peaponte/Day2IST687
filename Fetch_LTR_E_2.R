#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('cleandata.csv')
####################################

## start writing your R code from here
dfClean$LENGTH_OF_STAY_C
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'LTR_Data_E_2.csv')
####################################



