#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('C:/Users/Alex/stigmergy/Day3/raw_data.csv')
####################################

## start writing your R code from here
is.na(df)
dfClean <- df[!is.na(df$Likelihood_Recommend_H), ]
dfClean
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'cleandata.csv')
####################################

