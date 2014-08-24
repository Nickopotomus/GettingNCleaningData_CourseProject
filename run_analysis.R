

temp <- tempfile()
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL, temp)
dateDownloaded <- date()

xTrain <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
subjectTrain <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
yTrain <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))

# put together training data.frame
TrainTimeBodyAccel <- data.frame("Participant_ID"=as.factor(subjectTrain[,1]),
                                 "Activity_ID"=as.factor(yTrain[,1]),
                                 "Domain"=as.factor(rep("Time",nrow(yTrain))),
                                 "Component"=as.factor(rep("Body Motion",nrow(yTrain))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTrain))),
                                 "Acceleration_X_Mean"=xTrain[,1],
                                 "Acceleration_Y_Mean"=xTrain[,2],
                                 "Acceleration_Z_Mean"=xTrain[,3],
                                 "Acceleration_X_Std"=xTrain[,4],
                                 "Acceleration_Y_Std"=xTrain[,5],
                                 "Acceleration_Z_Std"=xTrain[,6],
                                 "Acceleration_Magnitude_Mean"=xTrain[,201],
                                 "Acceleration_Magnitude_Std"=xTrain[,201],
                                 "Jerk_X_Mean"=xTrain[,81],
                                 "Jerk_Y_Mean"=xTrain[,82],
                                 "Jerk_Z_Mean"=xTrain[,83],
                                 "Jerk_X_Std"=xTrain[,84],
                                 "Jerk_Y_Std"=xTrain[,85],
                                 "Jerk_Z_Std"=xTrain[,86],
                                 "Jerk_Magnitude_Mean"=xTrain[,227],
                                 "Jerk_Magnitude_Std"=xTrain[,228])
TrainTimeBodyGyro <- data.frame("Participant_ID"=as.factor(subjectTrain[,1]),
                                "Activity_ID"=as.factor(yTrain[,1]),
                                "Domain"=as.factor(rep("Time",nrow(yTrain))),
                                "Component"=as.factor(rep("Body Motion",nrow(yTrain))),
                                "Instrument"=as.factor(rep("Gyroscope",nrow(yTrain))),
                                "Acceleration_X_Mean"=xTrain[,121],
                                "Acceleration_Y_Mean"=xTrain[,122],
                                "Acceleration_Z_Mean"=xTrain[,123],
                                "Acceleration_X_Std"=xTrain[,124],
                                "Acceleration_Y_Std"=xTrain[,125],
                                "Acceleration_Z_Std"=xTrain[,126],
                                "Acceleration_Magnitude_Mean"=xTrain[,240],
                                "Acceleration_Magnitude_Std"=xTrain[,241],
                                "Jerk_X_Mean"=xTrain[,161],
                                "Jerk_Y_Mean"=xTrain[,162],
                                "Jerk_Z_Mean"=xTrain[,163],
                                "Jerk_X_Std"=xTrain[,164],
                                "Jerk_Y_Std"=xTrain[,165],
                                "Jerk_Z_Std"=xTrain[,166],
                                "Jerk_Magnitude_Mean"=xTrain[,253],
                                "Jerk_Magnitude_Std"=xTrain[,254])
TrainTimeGravAccel <- data.frame("Participant_ID"=as.factor(subjectTrain[,1]),
                                 "Activity_ID"=as.factor(yTrain[,1]),
                                 "Domain"=as.factor(rep("Time",nrow(yTrain))),
                                 "Component"=as.factor(rep("Gravitational",nrow(yTrain))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTrain))),
                                 "Acceleration_X_Mean"=xTrain[,41],
                                 "Acceleration_Y_Mean"=xTrain[,42],
                                 "Acceleration_Z_Mean"=xTrain[,43],
                                 "Acceleration_X_Std"=xTrain[,44],
                                 "Acceleration_Y_Std"=xTrain[,45],
                                 "Acceleration_Z_Std"=xTrain[,46],
                                 "Acceleration_Magnitude_Mean"=xTrain[,214],
                                 "Acceleration_Magnitude_Std"=xTrain[,215],
                                 "Jerk_X_Mean"=rep(NA,nrow(yTrain)),
                                 "Jerk_Y_Mean"=rep(NA,nrow(yTrain)),
                                 "Jerk_Z_Mean"=rep(NA,nrow(yTrain)),
                                 "Jerk_X_Std"=rep(NA,nrow(yTrain)),
                                 "Jerk_Y_Std"=rep(NA,nrow(yTrain)),
                                 "Jerk_Z_Std"=rep(NA,nrow(yTrain)),
                                 "Jerk_Magnitude_Mean"=rep(NA,nrow(yTrain)),
                                 "Jerk_Magnitude_Std"=rep(NA,nrow(yTrain)))
TrainFreqBodyAccel <- data.frame("Participant_ID"=as.factor(subjectTrain[,1]),
                                 "Activity_ID"=as.factor(yTrain[,1]),
                                 "Domain"=as.factor(rep("Frequency",nrow(yTrain))),
                                 "Component"=as.factor(rep("Body Motion",nrow(yTrain))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTrain))),
                                 "Acceleration_X_Mean"=xTrain[,266],
                                 "Acceleration_Y_Mean"=xTrain[,267],
                                 "Acceleration_Z_Mean"=xTrain[,268],
                                 "Acceleration_X_Std"=xTrain[,269],
                                 "Acceleration_Y_Std"=xTrain[,270],
                                 "Acceleration_Z_Std"=xTrain[,271],
                                 "Acceleration_Magnitude_Mean"=xTrain[,503],
                                 "Acceleration_Magnitude_Std"=xTrain[,504],
                                 "Jerk_X_Mean"=xTrain[,345],
                                 "Jerk_Y_Mean"=xTrain[,346],
                                 "Jerk_Z_Mean"=xTrain[,347],
                                 "Jerk_X_Std"=xTrain[,348],
                                 "Jerk_Y_Std"=xTrain[,349],
                                 "Jerk_Z_Std"=xTrain[,350],
                                 "Jerk_Magnitude_Mean"=xTrain[,516],
                                 "Jerk_Magnitude_Std"=xTrain[,517])
TrainFreqBodyGyro <- data.frame("Participant_ID"=as.factor(subjectTrain[,1]),
                                "Activity_ID"=as.factor(yTrain[,1]),
                                "Domain"=as.factor(rep("Frequency",nrow(yTrain))),
                                "Component"=as.factor(rep("Body Motion",nrow(yTrain))),
                                "Instrument"=as.factor(rep("Gyroscope",nrow(yTrain))),
                                "Acceleration_X_Mean"=xTrain[,424],
                                "Acceleration_Y_Mean"=xTrain[,425],
                                "Acceleration_Z_Mean"=xTrain[,426],
                                "Acceleration_X_Std"=xTrain[,427],
                                "Acceleration_Y_Std"=xTrain[,428],
                                "Acceleration_Z_Std"=xTrain[,429],
                                "Acceleration_Magnitude_Mean"=xTrain[,529],
                                "Acceleration_Magnitude_Std"=xTrain[,530],
                                "Jerk_X_Mean"=rep(NA,nrow(yTrain)),
                                "Jerk_Y_Mean"=rep(NA,nrow(yTrain)),
                                "Jerk_Z_Mean"=rep(NA,nrow(yTrain)),
                                "Jerk_X_Std"=rep(NA,nrow(yTrain)),
                                "Jerk_Y_Std"=rep(NA,nrow(yTrain)),
                                "Jerk_Z_Std"=rep(NA,nrow(yTrain)),
                                "Jerk_Magnitude_Mean"=xTrain[,542],
                                "Jerk_Magnitude_Std"=xTrain[,543])

dfTrain <- rbind(TrainTimeBodyAccel,
                 TrainTimeBodyGyro,
                 TrainTimeGravAccel,
                 TrainFreqBodyAccel,
                 TrainFreqBodyGyro)

remove(fileURL,
       xTrain,yTrain,subjectTrain,
       TrainTimeBodyAccel,TrainTimeBodyGyro,TrainTimeGravAccel,TrainFreqBodyAccel,TrainFreqBodyGyro)

xTest <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
subjectTest <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
yTest <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))

unlink(temp)

TestTimeBodyAccel <- data.frame("Participant_ID"=as.factor(subjectTest[,1]),
                                 "Activity_ID"=as.factor(yTest[,1]),
                                 "Domain"=as.factor(rep("Time",nrow(yTest))),
                                 "Component"=as.factor(rep("Body Motion",nrow(yTest))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTest))),
                                 "Acceleration_X_Mean"=xTest[,1],
                                 "Acceleration_Y_Mean"=xTest[,2],
                                 "Acceleration_Z_Mean"=xTest[,3],
                                 "Acceleration_X_Std"=xTest[,4],
                                 "Acceleration_Y_Std"=xTest[,5],
                                 "Acceleration_Z_Std"=xTest[,6],
                                 "Acceleration_Magnitude_Mean"=xTest[,201],
                                 "Acceleration_Magnitude_Std"=xTest[,201],
                                 "Jerk_X_Mean"=xTest[,81],
                                 "Jerk_Y_Mean"=xTest[,82],
                                 "Jerk_Z_Mean"=xTest[,83],
                                 "Jerk_X_Std"=xTest[,84],
                                 "Jerk_Y_Std"=xTest[,85],
                                 "Jerk_Z_Std"=xTest[,86],
                                 "Jerk_Magnitude_Mean"=xTest[,227],
                                 "Jerk_Magnitude_Std"=xTest[,228])
TestTimeBodyGyro <- data.frame("Participant_ID"=as.factor(subjectTest[,1]),
                                "Activity_ID"=as.factor(yTest[,1]),
                                "Domain"=as.factor(rep("Time",nrow(yTest))),
                                "Component"=as.factor(rep("Body Motion",nrow(yTest))),
                                "Instrument"=as.factor(rep("Gyroscope",nrow(yTest))),
                                "Acceleration_X_Mean"=xTest[,121],
                                "Acceleration_Y_Mean"=xTest[,122],
                                "Acceleration_Z_Mean"=xTest[,123],
                                "Acceleration_X_Std"=xTest[,124],
                                "Acceleration_Y_Std"=xTest[,125],
                                "Acceleration_Z_Std"=xTest[,126],
                                "Acceleration_Magnitude_Mean"=xTest[,240],
                                "Acceleration_Magnitude_Std"=xTest[,241],
                                "Jerk_X_Mean"=xTest[,161],
                                "Jerk_Y_Mean"=xTest[,162],
                                "Jerk_Z_Mean"=xTest[,163],
                                "Jerk_X_Std"=xTest[,164],
                                "Jerk_Y_Std"=xTest[,165],
                                "Jerk_Z_Std"=xTest[,166],
                                "Jerk_Magnitude_Mean"=xTest[,253],
                                "Jerk_Magnitude_Std"=xTest[,254])
TestTimeGravAccel <- data.frame("Participant_ID"=as.factor(subjectTest[,1]),
                                 "Activity_ID"=as.factor(yTest[,1]),
                                 "Domain"=as.factor(rep("Time",nrow(yTest))),
                                 "Component"=as.factor(rep("Gravitational",nrow(yTest))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTest))),
                                 "Acceleration_X_Mean"=xTest[,41],
                                 "Acceleration_Y_Mean"=xTest[,42],
                                 "Acceleration_Z_Mean"=xTest[,43],
                                 "Acceleration_X_Std"=xTest[,44],
                                 "Acceleration_Y_Std"=xTest[,45],
                                 "Acceleration_Z_Std"=xTest[,46],
                                 "Acceleration_Magnitude_Mean"=xTest[,210],
                                 "Acceleration_Magnitude_Std"=xTest[,215],
                                 "Jerk_X_Mean"=rep(NA,nrow(yTest)),
                                 "Jerk_Y_Mean"=rep(NA,nrow(yTest)),
                                 "Jerk_Z_Mean"=rep(NA,nrow(yTest)),
                                 "Jerk_X_Std"=rep(NA,nrow(yTest)),
                                 "Jerk_Y_Std"=rep(NA,nrow(yTest)),
                                 "Jerk_Z_Std"=rep(NA,nrow(yTest)),
                                 "Jerk_Magnitude_Mean"=rep(NA,nrow(yTest)),
                                 "Jerk_Magnitude_Std"=rep(NA,nrow(yTest)))
TestFreqBodyAccel <- data.frame("Participant_ID"=as.factor(subjectTest[,1]),
                                 "Activity_ID"=as.factor(yTest[,1]),
                                 "Domain"=as.factor(rep("Frequency",nrow(yTest))),
                                 "Component"=as.factor(rep("Body Motion",nrow(yTest))),
                                 "Instrument"=as.factor(rep("Accelerometer",nrow(yTest))),
                                 "Acceleration_X_Mean"=xTest[,266],
                                 "Acceleration_Y_Mean"=xTest[,267],
                                 "Acceleration_Z_Mean"=xTest[,268],
                                 "Acceleration_X_Std"=xTest[,269],
                                 "Acceleration_Y_Std"=xTest[,270],
                                 "Acceleration_Z_Std"=xTest[,271],
                                 "Acceleration_Magnitude_Mean"=xTest[,503],
                                 "Acceleration_Magnitude_Std"=xTest[,504],
                                 "Jerk_X_Mean"=xTest[,345],
                                 "Jerk_Y_Mean"=xTest[,346],
                                 "Jerk_Z_Mean"=xTest[,347],
                                 "Jerk_X_Std"=xTest[,348],
                                 "Jerk_Y_Std"=xTest[,349],
                                 "Jerk_Z_Std"=xTest[,350],
                                 "Jerk_Magnitude_Mean"=xTest[,516],
                                 "Jerk_Magnitude_Std"=xTest[,517])
TestFreqBodyGyro <- data.frame("Participant_ID"=as.factor(subjectTest[,1]),
                                "Activity_ID"=as.factor(yTest[,1]),
                                "Domain"=as.factor(rep("Frequency",nrow(yTest))),
                                "Component"=as.factor(rep("Body Motion",nrow(yTest))),
                                "Instrument"=as.factor(rep("Gyroscope",nrow(yTest))),
                                "Acceleration_X_Mean"=xTest[,424],
                                "Acceleration_Y_Mean"=xTest[,425],
                                "Acceleration_Z_Mean"=xTest[,426],
                                "Acceleration_X_Std"=xTest[,427],
                                "Acceleration_Y_Std"=xTest[,428],
                                "Acceleration_Z_Std"=xTest[,429],
                                "Acceleration_Magnitude_Mean"=xTest[,529],
                                "Acceleration_Magnitude_Std"=xTest[,530],
                                "Jerk_X_Mean"=rep(NA,nrow(yTest)),
                                "Jerk_Y_Mean"=rep(NA,nrow(yTest)),
                                "Jerk_Z_Mean"=rep(NA,nrow(yTest)),
                                "Jerk_X_Std"=rep(NA,nrow(yTest)),
                                "Jerk_Y_Std"=rep(NA,nrow(yTest)),
                                "Jerk_Z_Std"=rep(NA,nrow(yTest)),
                                "Jerk_Magnitude_Mean"=xTest[,542],
                                "Jerk_Magnitude_Std"=xTest[,543])

dfTest <- rbind(TestTimeBodyAccel,
                 TestTimeBodyGyro,
                 TestTimeGravAccel,
                 TestFreqBodyAccel,
                 TestFreqBodyGyro)

remove(temp,
       xTest,yTest,subjectTest,
       TestTimeBodyAccel,TestTimeBodyGyro,TestTimeGravAccel,TestFreqBodyAccel,TestFreqBodyGyro)

dfTidyData <- rbind(dfTrain,
                    dfTest)

remove(dfTrain,dfTest)

dfTidyDataAvg <- data.frame(matrix(vector(),0,21,
                                   dimnames=list(c(),
                                                  c("Participant_ID",
                                                     "Activity_ID",
                                                     "Domain",
                                                     "Component",
                                                     "Instrument",
                                                     "Acceleration_X_Mean",
                                                     "Acceleration_Y_Mean",
                                                     "Acceleration_Z_Mean",
                                                     "Acceleration_X_Std",
                                                     "Acceleration_Y_Std",
                                                     "Acceleration_Z_Std",
                                                     "Acceleration_Magnitude_Mean",
                                                     "Acceleration_Magnitude_Std",
                                                     "Jerk_X_Mean",
                                                     "Jerk_Y_Mean",
                                                     "Jerk_Z_Mean",
                                                     "Jerk_X_Std",
                                                     "Jerk_Y_Std",
                                                     "Jerk_Z_Std",
                                                     "Jerk_Magnitude_Mean",
                                                     "Jerk_Magnitude_Std"))))

dataFactors <- list(c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"),
                    c("1","2","3","4","5","6"),
                    c("Time","Frequency"),
                    c("Body Motion","Gravitational"),
                    c("Accelerometer","Gyroscope"))
nrow = 1

for(i in 1:30){
  for(j in 1:6){
    for(k in 1:2){
      for(l in 1:2){
        for(m in 1:2){
          averages <- rep(NA,16)
          for(n in 1:16){
            if((k == 1 & l == 2 & m == 2)|(k == 2 & l == 2)){
              averages[n] <- NA
            } else{
              averages[n] <- mean(dfTidyData[(dfTidyData$Participant_ID == dataFactors[[1]][[i]] &
                                                dfTidyData$Activity_ID == dataFactors[[2]][[j]] &
                                                dfTidyData$Domain == dataFactors[[3]][[k]] &
                                                dfTidyData$Component == dataFactors[[4]][[l]] &
                                                dfTidyData$Instrument == dataFactors[[5]][[m]]), n+5])              
            }
          }
          dfTidyDataAvg[nrow,1] <- dataFactors[[1]][[i]]
          dfTidyDataAvg[nrow,2] <- dataFactors[[2]][[j]]
          dfTidyDataAvg[nrow,3] <- dataFactors[[3]][[k]]
          dfTidyDataAvg[nrow,4] <- dataFactors[[4]][[l]]
          dfTidyDataAvg[nrow,5] <- dataFactors[[5]][[m]]
          dfTidyDataAvg[nrow,6] <- averages[1]
          dfTidyDataAvg[nrow,7] <- averages[2]
          dfTidyDataAvg[nrow,8] <- averages[3]
          dfTidyDataAvg[nrow,9] <- averages[4]
          dfTidyDataAvg[nrow,10] <- averages[5]
          dfTidyDataAvg[nrow,11] <- averages[6]
          dfTidyDataAvg[nrow,12] <- averages[7]
          dfTidyDataAvg[nrow,13] <- averages[8]
          dfTidyDataAvg[nrow,14] <- averages[9]
          dfTidyDataAvg[nrow,15] <- averages[10]
          dfTidyDataAvg[nrow,16] <- averages[11]
          dfTidyDataAvg[nrow,17] <- averages[12]
          dfTidyDataAvg[nrow,18] <- averages[13]
          dfTidyDataAvg[nrow,19] <- averages[14]
          dfTidyDataAvg[nrow,20] <- averages[15]
          dfTidyDataAvg[nrow,21] <- averages[16]
          
          nrow <- nrow + 1
        }
      }
    }
  }
}

remove(dataFactors, averages,
       nrow, i, j, k, l, m, n)

path <- paste(getwd(),"/dfTidyDataAvg.txt",sep="")
write.table(dfTidyDataAvg, path, row.names = FALSE)
         