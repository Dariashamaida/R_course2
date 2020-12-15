### What is this about?
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


### R Script
The R script run_analysis.md describes the following steps:
1. Getting the raw data, assign descriptive labels;
2. Uniting test and train data together;
3. For each testing pulling out only mean and standard deviation measurement;
4. Using activities performed as the activity labels in dataset;
5. Creating independent tidy dataset with means for each variable-activity-subject.

### Codebook
CodeBook.md explains the steps how to obtain the tidy dataset.

### Tidy dataset
The 'tidy_dataset.csv' is outputted and saved.



