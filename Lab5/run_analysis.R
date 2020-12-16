#creating dataframe with col names
features_ <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\features.txt', colClasses = "character")[,2]

#reading data

#train
x_train <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\train\\X_train.txt', col.names = features_, check.names = FALSE)
y_train <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\train\\y_train.txt', col.names = c('Activity'))
subject_train <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\train\\subject_train.txt', col.names = c('Subject'))

#test
x_test <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\test\\X_test.txt', col.names = features_, check.names = FALSE)
y_test <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\test\\y_test.txt', col.names = c('Activity'))
subject_test <- read.table('G:\\KNU\\6 курс\\R\\Lab 5\\UCI HAR Dataset\\test\\subject_test.txt', col.names = c('Subject'))

