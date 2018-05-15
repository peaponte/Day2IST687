#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
dfClean <- read.csv('cleandata.csv')
####################################

## start writing your R code from here

dfClean
#Range of Likelihood to recommend
L2Rrange <- range(dfClean$Likelihood_Recommend_H)

#Min of Likelihood to recommend
L2Rmin <- min(dfClean$Likelihood_Recommend_H)

#Max of Likelihood to recommend
L2Rmax <- max(dfClean$Likelihood_Recommend_H)

#Mean of likelihood to recommend
L2Rmean <- mean(dfClean$Likelihood_Recommend_H)

#Standard Dev. of likelihood to recommend
L2Rsd <- sd(dfClean$Likelihood_Recommend_H)

#Make sure no N/A's in column overall stat
dfClean <- dfClean[!is.na(dfClean$Overall_Sat_H), ]

#Range of Overall Sat.
OverallSatrange <- range(dfClean$Overall_Sat_H)

#Min of Overall Sat.
OverallSatmin <- min(dfClean$Overall_Sat_H)

#Max of Overall Sat.
OverallSatmax <- max(dfClean$Overall_Sat_H)

#Mean of Overall Sat.
OverallSatmean <- mean(dfClean$Overall_Sat_H)

#Standard Dev. of Overall Sat,
OverallSatsd<- sd(dfClean$Overall_Sat_H)

#Make sure no N/A's in column Length of Stay
dfClean <- dfClean[!is.na(dfClean$LENGTH_OF_STAY_C), ]

#Range of length of stay
LoSrange <- range(dfClean$LENGTH_OF_STAY_C)

#Min of length of stay
LoSmin <- min(dfClean$LENGTH_OF_STAY_C)

#Max of length of stay
LoSmax <- max(dfClean$LENGTH_OF_STAY_C)

#Mean of length of stay
LoSmean <- mean(dfClean$LENGTH_OF_STAY_C)

#Standard Dev. of length of stay
LoSsd <- sd(dfClean$LENGTH_OF_STAY_C)

#Print Statistics to screen
L2Rrange
L2Rmin
L2Rmax
L2Rmean
L2Rsd
OverallSatrange
OverallSatmin
OverallSatmax
OverallSatmean
OverallSatsd
LoSrange
LoSmin
LoSmax
LoSmean
LoSsd

#Generate Quantiles
quantile(dfClean$Likelihood_Recommend_H, probs=c(.25,0.75,0.9))
quantile(dfClean$Overall_Sat_H, probs=c(.25,0.75,0.9))
quantile(dfClean$LENGTH_OF_STAY_C, probs=c(.25,0.75,0.9))

#Generate Histograms
hist(dfClean$Likelihood_Recommend_H)
hist(dfClean$Overall_Sat_H)
hist(dfClean$LENGTH_OF_STAY_C)

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'Descriptive_stats.csv')
####################################



