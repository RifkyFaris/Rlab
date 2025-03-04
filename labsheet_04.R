getwd()
setwd("C:/Users/it23249370/Desktop/lab4")

#Q1

data<-read.table("DATA 4.txt",header=TRUE)
data

#Q2
#boxplot
boxplot(data$X1, main="Box-plot of Team Attendance(X1)",col="yellow")
boxplot(data$X2, main="Box-plot of Team Salary(X2)",col="pink")
boxplot(data$X3, main="Box-plot of Team Years(X3)",col="orange")

#Histogram
hist(data$X1, main="Histogram of Team Attendance(X1)",col="yellow",xlab="Attendance",border="black")
hist(data$X2, main="Histogram of Team Attendance(X2)",col="pink",xlab="Attendance",border="black")
hist(data$X3, main="Histogram of Team Attendance(X3)",col="orange",xlab="Attendance",border="black")

#stem-leaf
stem(data$X1)
stem(data$X2)
stem(data$X3)

#mean
x1mean<-mean(data$X1)
print(paste("Mean of X1 : ",x1mean))

x2mean<-mean(data$X2)
print(paste("Mean of X2 : ",x2mean))

x3mean<-mean(data$X3)
print(paste("Mean of X3 : ",x3mean))

#median

x1median<-median(data$X1)
print(paste("Median of X1 : ",x1median))

x2median<-median(data$X2)
print(paste("Median of X2 : ",x2median))

x3median<-median(data$X3)
print(paste("Median of X3 : ",x3median))

#Standard deviation

x1sd<-sd(data$X1)
print(paste("Standard deviation of X1 : ",x1sd))

x2sd<-sd(data$X2)
print(paste("Standard deviation of X2 : ",x2sd))

x3sd<-sd(data$X3)
print(paste("Standard deviation of X3 : ",x3sd))

#First Quartile

x1q1<-quantile(data$X1,0.25)
print(paste("First quartile of X1 : ",x1q1))

x2q1<-quantile(data$X2,0.25)
print(paste("First quartile of X2 : ",x2q1))

x3q1<-quantile(data$X3,0.25)
print(paste("First quartile of X3 : ",x3q1))

#Third Quartile
x1q3<-quantile(data$X1,0.75)
print(paste("Third quartile of X1 : ",x1q3))

x2q3<-quantile(data$X2,0.75)
print(paste("Third quartile of X2 : ",x2q3))

x3q3<-quantile(data$X3,0.75)
print(paste("Third quartile of X3 : ",x3q3))

#IQR
IQRx1<-IQR(data$X1)
print(paste("IQR of X1 : ",IQRx1))
IQRx2<-IQR(data$X2)
print(paste("IQR of X2 : ",IQRx2))
IQRx3<-IQR(data$X3)
print(paste("IQR of X3 : ",IQRx3))



#Q3
findMode<-function(x){
  freqTable<-table(x)
  print(freqTable)
  maxFreq<-max(freqTable)
  modeValues<-as.numeric(names(freqTable[freqTable==maxFreq]))
  return(modeValues)
}
modeYears<-findMode(data$X3)
print(modeYears)

#Q4
findOutliers<-function(x){
  q1<-quantile(x,0.25)
  q3<-quantile(x,0.75)
  IQR<-q3-q1
  lowerBound<-q1-1.5*IQR
  upperBound<-q3+1.5*IQR
  x[(x<lowerBound)|(x>upperBound)]
  
}
outlierX1<-findOutliers(data$X1)
paste("Outliers of X1:",outlierX1)

outlierX2<-findOutliers(data$X2)
paste("Outliers of X2:",outlierX2)

outlierX3<-findOutliers(data$X3)
paste("Outliers of X3:",outlierX3)


