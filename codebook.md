---
title: "Codebook"
author: "Derek Van Booven"
date: "March 9, 2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
### Data
Data was obtained from [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), run through `commands.R` in this repository. The resulting data is contained in `tidy_data.txt` which is a text file with fields separated by a single space.  The first row contains the header information which is described in detail below.


### Variables
***
##### **Subject** - Subject ID for the individual ranging from 1 to 30.

##### **Activity** - Description of the possible activities during measurement with 6 possible values :
  * LAYING (value 6) - subject laying at time of measurement
  * SITTING (value 4) - subject was sitting at time of measurement
  * STANDING (value 5) - subject was standing at time of measurement
  * WALKING (value 1) - subject was walking at time of measurement
  * WALKING_UPSTAIRS (value 2) - subject was walking upstairs at time of measurement
  * WALKING_DOWNSTAIRS (value 3) - subject was walking downstairs at time of measurement



### Transformations
***
Data was transformed to make it human readable.  This is a table of the performed conversions :

Original Value    |    Replaced With
------------------|-----------------
Acc               |    Accelerometer
Gyro              |    Gyroscope
Freq              |    Frequency
Mag               |    Magnitude
std               |    StandardDeviation
mean              |    Mean
f                 |    FrequncyDomain
t                 |    TimeDomain


### Measurements
Measurments were all done in two domains (frequency and time).  For more information about each of the individual data points please visit [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

* `TimeDomainBodyAccelerometerMeanX`
* `TimeDomainBodyAccelerometerMeanY`
* `TimeDomainBodyAccelerometerMeanZ`
* `TimeDomainBodyAccelerometerStandardDeviationX`
* `TimeDomainBodyAccelerometerStandardDeviationY`
* `TimeDomainBodyAccelerometerStandardDeviationZ`
* `TimeDomainGravityAccelerometerMeanX`
* `TimeDomainGravityAccelerometerMeanY`
* `TimeDomainGravityAccelerometerMeanZ`
* `TimeDomainGravityAccelerometerStandardDeviationX`
* `TimeDomainGravityAccelerometerStandardDeviationY`
* `TimeDomainGravityAccelerometerStandardDeviationZ`
* `TimeDomainBodyAccelerometerJerkMeanX`
* `TimeDomainBodyAccelerometerJerkMeanY`
* `TimeDomainBodyAccelerometerJerkMeanZ`
* `TimeDomainBodyAccelerometerJerkStandardDeviationX`
* `TimeDomainBodyAccelerometerJerkStandardDeviationY`
* `TimeDomainBodyAccelerometerJerkStandardDeviationZ`
* `TimeDomainBodyGyroscopeMeanX`
* `TimeDomainBodyGyroscopeMeanY`
* `TimeDomainBodyGyroscopeMeanZ`
* `TimeDomainBodyGyroscopeStandardDeviationX`
* `TimeDomainBodyGyroscopeStandardDeviationY`
* `TimeDomainBodyGyroscopeStandardDeviationZ`
* `TimeDomainBodyGyroscopeJerkMeanX`
* `TimeDomainBodyGyroscopeJerkMeanY`
* `TimeDomainBodyGyroscopeJerkMeanZ`
* `TimeDomainBodyGyroscopeJerkStandardDeviationX`
* `TimeDomainBodyGyroscopeJerkStandardDeviationY`
* `TimeDomainBodyGyroscopeJerkStandardDeviationZ`
* `TimeDomainBodyAccelerometerMagnitudeMean`
* `TimeDomainBodyAccelerometerMagnitudeStandardDeviation`
* `TimeDomainGravityAccelerometerMagnitudeMean`
* `TimeDomainGravityAccelerometerMagnitudeStandardDeviation`
* `TimeDomainBodyAccelerometerJerkMagnitudeMean`
* `TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
* `TimeDomainBodyGyroscopeMagnitudeMean`
* `TimeDomainBodyGyroscopeMagnitudeStandardDeviation`
* `TimeDomainBodyGyroscopeJerkMagnitudeMean`
* `TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
* `FrequencyDomainBodyAccelerometerMeanX`
* `FrequencyDomainBodyAccelerometerMeanY`
* `FrequencyDomainBodyAccelerometerMeanZ`
* `FrequencyDomainBodyAccelerometerStandardDeviationX`
* `FrequencyDomainBodyAccelerometerStandardDeviationY`
* `FrequencyDomainBodyAccelerometerStandardDeviationZ`
* `FrequencyDomainBodyAccelerometerMeanFrequencyX`
* `FrequencyDomainBodyAccelerometerMeanFrequencyY`
* `FrequencyDomainBodyAccelerometerMeanFrequencyZ`
* `FrequencyDomainBodyAccelerometerJerkMeanX`
* `FrequencyDomainBodyAccelerometerJerkMeanY`
* `FrequencyDomainBodyAccelerometerJerkMeanZ`
* `FrequencyDomainBodyAccelerometerJerkStandardDeviationX`
* `FrequencyDomainBodyAccelerometerJerkStandardDeviationY`
* `FrequencyDomainBodyAccelerometerJerkStandardDeviationZ`
* `FrequencyDomainBodyAccelerometerJerkMeanFrequencyX`
* `FrequencyDomainBodyAccelerometerJerkMeanFrequencyY`
* `FrequencyDomainBodyAccelerometerJerkMeanFrequencyZ`
* `FrequencyDomainBodyGyroscopeMeanX`
* `FrequencyDomainBodyGyroscopeMeanY`
* `FrequencyDomainBodyGyroscopeMeanZ`
* `FrequencyDomainBodyGyroscopeStandardDeviationX`
* `FrequencyDomainBodyGyroscopeStandardDeviationY`
* `FrequencyDomainBodyGyroscopeStandardDeviationZ`
* `FrequencyDomainBodyGyroscopeMeanFrequencyX`
* `FrequencyDomainBodyGyroscopeMeanFrequencyY`
* `FrequencyDomainBodyGyroscopeMeanFrequencyZ`
* `FrequencyDomainBodyAccelerometerMagnitudeMean`
* `FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
* `FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency`
* `FrequencyDomainBodyBodyAccelerometerJerkMagnitudeMean`
* `FrequencyDomainBodyBodyAccelerometerJerkMagnitudeStandardDeviation`
* `FrequencyDomainBodyBodyAccelerometerJerkMagnitudeMeanFrequency`
* `FrequencyDomainBodyBodyGyroscopeMagnitudeMean`
* `FrequencyDomainBodyBodyGyroscopeMagnitudeStandardDeviation`
* `FrequencyDomainBodyBodyGyroscopeMagnitudeMeanFrequency`
* `FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMean`
* `FrequencyDomainBodyBodyGyroscopeJerkMagnitudeStandardDeviation`
* `FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMeanFrequency`
