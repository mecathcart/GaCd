This directory contains a program named run_analysis.R the dataset that the program produces in a text file entitled summarizeddata.txt, the codebook and this readme file.  The run_analysis.R program was designed to download and manipulate the UCI HAR dataset.

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The program does the following:

Reads in various files, including first the variable labels, followed by the measurements, subjects, and activities files for both training and test data. Assigns variable names while reading in files.
Binds columns for subjects, activities and measurements for training and test data separately.
Merges training and test data into one file.
Extracts only those measurements that contain mean() or std() in variable names.
Assigns descriptive labels to activity variable codes.
Makes variable names "tidy", by removing periods, changing initial "t" to "time", initial "f" to "freq", and making all letter lowercase.  In addition, words that were shortened were lengthened such as frequency, mangnitude, accelerometer, gyroscope and standard deviation.
Creates new dataset with the mean of each variable for each subject and activity.
Writes new dataset to summarizeddata.txt file.