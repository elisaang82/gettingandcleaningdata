## get column names from features file
col_names <- read.table("features.txt")
col_names <- col_names[,2]

## read test data
X_test <- read.table("./test/X_test.txt", col.names = col_names)
Y_test <- read.table("./test/y_test.txt", col.names = c("activity_label"))
subject_test <- read.table("./test/subject_test.txt", col.names = c("subject"))
test <- cbind(X_test, Y_test, subject_test)

## read train data
X_train <- read.table("./train/X_train.txt", col.names = col_names)
Y_train <- read.table("./train/Y_train.txt", col.names = c("activity_label"))
subject_train <- read.table("./train/subject_train.txt", col.names = c("subject"))
train <- cbind(X_train, Y_train, subject_train)

## 1: Merge training and testing into one datasets
X_whole <- rbind(test, train)

rm(X_test)
rm(X_train)

## 2: 
col_names <- as.character(col_names)
col_mean <- grep("mean",col_names)
col_std <- grep("std",col_names)
col_shortlist <- c(col_mean, col_std)
col_shortlist <- sort(col_shortlist)

length(col_mean)
length(col_std)
length(col_shortlist)
head(col_shortlist)

library("dplyr")
xdf <- tbl_df(X_whole)
new_data <- select(xdf, col_shortlist, activity_label, subject)

## 3 replacing activity labels
new_data$activity_label[new_data$activity_label == 1] <- "WALKING"
new_data$activity_label[new_data$activity_label == 2] <- "WALKINGUPSTAIRS"
new_data$activity_label[new_data$activity_label == 3] <- "WALKINGDOWNSTAIRS"
new_data$activity_label[new_data$activity_label == 4] <- "SITTING"
new_data$activity_label[new_data$activity_label == 5] <- "STANDING"
new_data$activity_label[new_data$activity_label == 6] <- "LAYING"

## 4
new_colnames <- colnames(new_data)
new_colnames <- gsub("\\.","",new_colnames)
new_colnames <- gsub("Acc","Acceleration",new_colnames)
new_colnames <- gsub("std","StandardDeviation",new_colnames)
new_colnames <- gsub("Gyro","Gyroscope",new_colnames)
new_colnames <- tolower(new_colnames)
colnames(new_data) <- new_colnames

## 5:
tidy_data <- summarise_each(group_by(new_data, activity_label, subject), funs(mean))
