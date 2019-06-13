### Load packages
library(dplyr)
### Set directory
setwd("./courseraR/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")


#### A. Load the test dataset ####

## 1) Load  subject_test
subject_test <- read.table("./test/subject_test.txt",header = FALSE)
## 2) Load  X_test
X_test <- read.table("./test/X_test.txt",header = FALSE)
## 3) Load  Y_test
Y_test <- read.table("./test/Y_test.txt",header = FALSE)
## 4) Merge subject_test, X_test & Y_test
test <- cbind.data.frame(subject_test,Y_test,X_test)
## 5) Remove individual datasets
rm(subject_test,X_test,Y_test)


#### B. Load the train dataset ####

## 1) Load  subject_train
subject_train <- read.table("./train/subject_train.txt",header = FALSE)
## 2) Load  X_train
X_train <- read.table("./train/X_train.txt",header = FALSE)
## 3) Load  Y_train
Y_train <- read.table("./train/Y_train.txt",header = FALSE)
## 4) Merge subject_train, X_train & Y_train
train <- cbind.data.frame(subject_train,Y_train,X_train)
## 5) Remove individual datasets
rm(subject_train,X_train,Y_train)


#### C. Merge test and train datasets by row ####
merged <- rbind.data.frame(test,train)


#### D. Name the variables ####

## 1) Load features.txt
features <- read.table("features.txt",header = FALSE)
## 2) Create a vector of names
variablenames <- c("subject_id","activity_labels",as.character(features[,2]))
## 3) Assign the names of the variables to merged dataset 
colnames(merged) <- variablenames


#### E. Select variables with words "mean" and "std" ####

## 1) Identify columns where names "id", "labels", "mean", "std" appear
id <- grep("id",names(merged))
labels <- grep("labels",names(merged))
meanraw <- grep("[Mm]ean",names(merged))
std <- grep("std",names(merged))
angle.Freq <- c(grep("angle",names(merged)),grep("Freq",names(merged)))
meansub <- setdiff(meanraw,angle.Freq)
## 2) Join all columns in a single vector
selected_variables <- c(id,labels,std,meansub)
## 3) Subset merged data to select only these variables
merged_subset <- merged[selected_variables]


#### F. Change the names in column "activiy_labels"

## 1) Load "activiy_labels.txt"
activity_names <- read.table("activity_labels.txt",header = FALSE)
## 2) Change the names of the colums
colnames(activity_names) <- c("activity_labels","activity_names")
## 3) Create column "activity_name"
merged_subset <- merge(activity_names, merged_subset, by = "activity_labels")


#### G. Create a second tidy dataset with the average of each variable for each activity and each subject #####

## Calculate the average by group
outputdataset <- merged_subset %>% group_by(subject_id, activity_names) %>%
summarise_all(list(mean=mean))

## Write a txt file with the results
write.table(outputdataset, file="outputdataset.txt", row.name=FALSE)
