#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('cleandata.csv')
####################################

## start writing your R code from here
#Clean up Likelihood to Reccomend, Condition of Hotel, and Saff Cared
dfClean <- dfClean[!is.na(dfClean$Likelihood_Recommend_H), ]
dfClean <- dfClean[!is.na(dfClean$Condition_Hotel_H), ]
dfClean <- dfClean[!is.na(dfClean$Staff_Cared_H), ]

#Create New Data Frame
cleanDataFrame <- data.frame(dfClean$Likelihood_Recommend_H, dfClean$Condition_Hotel_H, dfClean$Staff_Cared_H)
cleanDataFrame

#Find Index of likelihood to recommend values that equal 10 only
index <- which(cleanDataFrame$dfClean.Likelihood_Recommend_H == 10)
dfnew1 <-cleanDataFrame[index,]
dfnew1

#Find index of clean condition values that equal 10 only
index1 <- which(cleanDataFrame$dfClean.Condition_Hotel_H == 10)
dfnew2 <- cleanDataFrame[index1,]
dfnew2

#Find index of staff cares that equal 10 only
index2 <- which(cleanDataFrame$dfClean.Staff_Cared_H == 10)
dfnew3 <- cleanDataFrame[index2,]
dfnew3

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'Part_F_Aggragate_Output.csv')
####################################



