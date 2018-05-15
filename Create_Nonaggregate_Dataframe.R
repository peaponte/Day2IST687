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

#Compare histograms
hist(dfClean$Likelihood_Recommend_H)
hist(dfClean$Condition_Hotel_H)
hist(dfClean$Staff_Cared_H)
#After comparing histograms you can conclude that there is a tendancy for higher Liklihood to Recommend values
#if the condition of the hotel and the amount the staff cared was high
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'Part_F_Nonaggregate_Output.csv')
####################################



