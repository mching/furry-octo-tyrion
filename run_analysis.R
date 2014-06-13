## 
## Course Project Getting and Cleaning Data
## 
## Michael Ching
## 
## Notes: zipped data was unzipped to a directory called dataset within this
## script's working directory

rm(list = ls())

## Merge datasets

## Load test data, nrows = 200 allowed for faster reading in to test script repeatedly.
test <- read.table("./dataset/test/X_test.txt", ) # nrows = 200) 

# Add variable names
features <- read.table("./dataset/features.txt")
names(test) <- features[, 2]

# Add activity column
activity_test <- read.table("./dataset/test/y_test.txt", ) # nrows = 200)
test <- data.frame(test, activity_test)
dim(test)
names(test)[562] <- "activity"
rm(activity_test)

# Add subject column
subject_test <- read.table("./dataset/test/subject_test.txt", ) # nrows = 200)
test <- data.frame(test, subject_test)
names(test)[563] <- "subject"
rm(subject_test)

## Load train data
train <- read.table("./dataset/train/X_train.txt", ) # nrows = 200)

# Add variable names
features <- read.table("./dataset/features.txt")
names(train) <- features[, 2]

# Add activity column
activity_train <- read.table("./dataset/train/y_train.txt", ) # nrows = 200)
train <- data.frame(train, activity_train)
dim(train)
names(train)[562] <- "activity"
rm(activity_train)

# Add subject column
subject_train <- read.table("./dataset/train/subject_train.txt", ) # nrows = 200)
train <- data.frame(train, subject_train)
names(train)[563] <- "subject"
rm(subject_train)

# Bind test and train datasets together (union)
dat <- rbind(test, train)
rm(test, train, features)

## Keep only variables that have mean and std in their names (as well as the
## subject and activity variables).
variables_mean <- grep(".mean", names(dat))
variables_std <- grep(".std", names(dat))
sorted_index <- sort(c(variables_mean, variables_std))
dat <- dat[, c(563, 562, sorted_index)]  # Put subject and activity first

rm(sorted_index, variables_mean, variables_std)

## Name the activities
activity_labels <- read.table("./dataset/activity_labels.txt", colClass = "character")
activity_labels <- activity_labels[, 2]
dat$activity <- factor(dat$activity, levels = 1:6, labels = activity_labels)
rm(activity_labels)

# Rename subjects to make non-numeric
# dat$subject <- paste0("s", dat$subject)

# Make subjects into factors
dat$subject <- factor(dat$subject)

## Rename the variable names (?)

## Create second tidy dataset with average of each variable for each activity and each subject
tidy_dat <- ddply(dat, .(subject, activity), numcolwise(mean))

# Various data caching steps
# save(dat, file = "dat.Rdata")
# save(tidy_dat, file = "tidy_dat.Rdata")
# load("dat.Rdata")

# write out tidy data product
write.csv(tidy_dat, file = "tidy_data.csv", row.names = F)


