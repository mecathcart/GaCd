run_analysis <- function(){

#remember to include the download and unzipping code
library(downloader)
download("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dest="dataset.zip", mode="wb") 
unzip ("dataset.zip", exdir = "./")
features <- read.table("./UCI HAR Dataset/features.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2)
 
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
  
  
#Merges the training and the test sets to create one data set.
train_set <- cbind(subject_train, y_train, X_train)
test_set <- cbind(subject_test, y_test, X_test)
whole_set <- rbind(train_set,test_set)
  
#Extracts only the measurements on the mean and standard deviation for each measurement.

means <- grep("mean", features$V2)
stds <- grep("std", features$V2)
means <- means +2
mean_set <- select(whole_set, means)
stds <- stds +2
std_set <- select(whole_set, stds)
mean_and_std_set <- cbind(whole_set[1:2], mean_set, std_set)

#Uses descriptive activity names to name the activities in the data set.

activity_labels <- c("WALKING","WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
tolower(activity_labels)
mean_and_std_set$activity <- activity_labels[mean_and_std_set$activity]

#Appropriately labels the data set with descriptive variable names.
colnames(mean_and_std_set) <- tolower(colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("^t","time-",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("freq","frequency",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("^f","frequency-",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("bodyacc","body-accelerometer-",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("bodygyro","body-gyroscope-",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("std","standard-deviation",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("mag","-magnitude",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("\\.","-",colnames(mean_and_std_set)) 
colnames(mean_and_std_set) <- gsub("-$","",colnames(mean_and_std_set))
colnames(mean_and_std_set) <- gsub("--","-",colnames(mean_and_std_set))
colnames(mean_and_std_set) <- gsub("--","-",colnames(mean_and_std_set))



#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

grouped <- group_by(mean_and_std_set, subject, activity)
summary_grouped <- summarize_each(grouped, funs(mean))

write.table(summary_grouped, "/Users/mdotedot/coursera/GaCDw4/summarizeddata.txt", sep="\t", row.names = FALSE)
colnames(summary_grouped)
}