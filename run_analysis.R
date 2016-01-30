##Assignment week 4 Getting and Cleaning Data

library(Hmisc)
library(plyr)

## The data is unpacked in the folder "UCI HAR Dataset"
date() # date and time of download: "Wed Jan 27 13:34:41 2016"

##Reading all the data
X_train<-read.table("UCI HAR Dataset/train/X_train.txt"); #test set
X_test<-read.table("UCI HAR Dataset/test/X_test.txt") #train set
str(X_train) ; str(X_test)
y_train<-read.table("UCI HAR Dataset/train/y_train.txt"); 
y_test<-read.table("UCI HAR Dataset/test/y_test.txt"); 
table(y_test) ; table(y_train) #in both sets de coding for the activity, 1-6
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activitynr","activity"))
activity_labels #the labels of the activity
features<-read.table("UCI HAR Dataset/features.txt",col.names=c("nr","feature"))
head(features) #the labels of the measurements in X_train and X_test

#adding the variable names (from features) to the datasets
colnames(X_train)<-features[,2]
colnames(X_test)<-features[,2]

#reading the information about the subject of each measurement
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt",col.names="subject")
table(subject_test) #the test set contains the measurements of 9 subjects
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt",col.names="subject")
table(subject_train) #the train set contains the measurements of 21 subjects

##merging the test and train sets together
#add colomn in data sets with subject nr in it and bind the sets together
X_test<-mutate(X_test,subject=subject_test[,1],activitynr=y_test[,1]) 
X_train<-mutate(X_train,subject=subject_train[,1],activitynr=y_train[,1])
X<-rbind(X_test,X_train)

#select the mean and standard deviation measurements
Xsel<-X[,grep("mean\\(\\)|std\\(\\)|subject|activitynr",colnames(X))] #use double backslash!
#merge with the activity labels table
DF2<-merge(Xsel,activity_labels,by.x="activitynr",by.y="activitynr")
#the mean of all measurements over subject and activity
DF3<-ddply(DF2,.(subject,activity),numcolwise(mean)) 
DF3<-DF3[!names(DF3)=="activitynr"] #is not usefull anymore now we have labels
#change the variable names to prevent confusion with the original data, add "Average"
colnames(DF3)[3:length(names(DF3))]<-paste0("Average",names(DF3)[3:length(names(DF3))])

#write tidy data set to file
write.csv(DF3,file="assignment week4.csv",row.names=FALSE)