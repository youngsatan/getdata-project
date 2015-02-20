##initializing
library(dplyr)
rm(list=ls())
setwd("D:/R/")
filelocation <- "D:/R/getdata-project/UCI HAR Dataset/"
ori_location <- getwd()

rawdataset <- data.frame()
raw_train <- data.frame()
raw_test <- data.frame()
setwd(filelocation)
features <- read.table("./features.txt",header = F,colClasses = "character")[,2]
activity_label <- read.table("./activity_labels.txt",header = F)[,2]
index_mean <- grep("mean()",x = features,fixed = T)
index_std <- grep("std()",x = features,fixed = T)

##read train data

subject <- read.table("./train/subject_train.txt",header = F)[,1]
activity <- read.table("./train/y_train.txt",header = F)[,1]
for (i in 1:6){  activity <- sub(i,activity_label[i],activity)}
raw_train <- read.table("./train/X_train.txt",header = F,col.names = features)
catagory <- rep("train",nrow(raw_train))
raw_train <- cbind(subject,activity,catagory,raw_train)

##read test data

subject <- read.table("./test/subject_test.txt",header = F)[,1]
activity <- read.table("./test/y_test.txt",header = F)[,1]

for (i in 1:6){  activity <- sub(i,activity_label[i],activity)}
raw_test <- read.table("./test/X_test.txt",header = F,col.names = features)
catagory <- rep("test",nrow(raw_test))
raw_test <- cbind(subject,activity,catagory,raw_test)


##combine & subsetting data 
rawdataset <- rbind.data.frame(raw_train,raw_test)
rawdata_subset <- rawdataset[,c(1:3,index_mean+3,index_std+3)]

##generating tidydata
rawdata_subset <- tbl_df(rawdata_subset)

rawdata_subset <- group_by(rawdata_subset,activity,subject)
tidydata <- summarise_each(rawdata_subset,funs(mean))
tidydata <- select(tidydata,-3)
##generating .txt file
write.table(tidydata,"getdata-project.txt",row.names = F) 
setwd(ori_location)
