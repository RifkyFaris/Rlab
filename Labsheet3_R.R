## Q1
setwd("C:/Users/it23249370/Desktop/lab3")

getwd()

data<-read.csv("DATA 3.csv")
print(data)

#print 6 lines of data set
head(data)

#print 50 lines of data set
head(data,50)

#change column names
colnames(data)<-c("Age","Gender","Accomodation")
head(data)

## Q2
#Quantitative therefore summary
summary(data$Age)

#Qualitative therefore table
table(data$Gender)

#Qualitative therefore table
table(data$Accomodation)

#data visualization
hist(data$Age, main="Histogram of Age",xlab="Age",col="yellow",border="black")

boxplot(data$Age, main="Histogram of Age",ylab="Age",col="yellow")

##Q3
#two way frequency table for gender and accomodation
table(data$Gender,data$Accomodation)

#data visualization
barplot(table(data$Gender,data$Accomodation),
        beside=TRUE,legend=c("Male","Female"),
        col=c("lightblue","pink"),
        main="Accomodation by gender",
        xlab="Accomodation type",
        ylab="Count"
        )



##Q4
boxplot(data$Age~data$Gender,
        names=c("Male","Female"),
        col=c("lightblue","pink"),
        main="Age distribution by gender",
        ylab="Age",xlab="Gender"
        )

#  boxplot for age by  accomodation

boxplot(data$Age~data$Accomodation,
        names=c("Home","Boarded","Lodged"),
        col=c("lightblue","pink"),
        main="Age distribution by Accomodation",
        ylab="Age",xlab="Accomodation"
)

#Q5

mean_age<-aggregate(Age ~ Gender + Accomodation,data=data,FUN=mean)
mean_age

#table format
mean_age_table<-matrix(mean_age$Age,nrow=2,ncol=3,byrow=TRUE)
rownames(mean_age_table)<-c("Male","Female")
colnames(mean_age_table)<-c("Home","Boarded","Lodging")

#display table
mean_age_table



