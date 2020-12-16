#reading test and train data and combining 2 datasets
train_data <- read.table("G://KNU//6 курс//R//Lab 5//UCI HAR Dataset//train//X_train.txt")
test_data <- read.table("G://KNU//6 курс//R//Lab 5//UCI HAR Dataset//test//X_test.txt")
all_data <- rbind.data.frame(train_data, test_data)

