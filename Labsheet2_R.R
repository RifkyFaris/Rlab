num1<-20
num2<-10


#if
if(num1>num2){
  print("num1 is greater than num2")
}


#if-else
if(num2>num1){
  print("num2 is greater than num1")
}else{
  print("num1 is greater than num2")
}


#if else if & else
if(num1>num2){
  print("num1 is greater than num2")
}else if(num1==num2){
  print("num1 is equal to num2")
}else{
  print("num2 is greater than num1")
}


#while
i<-1
while(i<6){
  print(i)
  i=i+1
}


# for loop
fruit<-list ("Apple","Banana","Cherry")
for(x in fruit){
  print(x)
}


# iterating numbers
for(i in 1:10){
  print(i)
}

#functions

my_function<-function(){
  print("Hello R !")
}

my_function()


#functions with argument
my_function2<-function(name){
  paste("Hello",name)
}

my_function2("Rifky")


#functions with multiple argument
my_function3<-function(first,last){
  paste("Hello",first,last)
}
my_function3("Rifky","Faris")

#functions with numbers as argument
my_function4<-function(num1,num2){
  print(num1*num2) #print also acts the same
  return(num1*num2)
  
}
my_function4(5,5)

#set file path
setwd("C:/Users/it23249370/Desktop/lab2")

#view file path
getwd()

#reading text files

data1<-read.table("Data1.txt",header=TRUE,sep=",")

data1

#reading csv file
data2<-read.csv("Data 2.csv")
data2

#define a data frame
data<-data.frame(
  Name=c("Alice","Roy","Carl"),
  Age=c(22,21,23),
  Score=c(85,80,90)
)
data

write.csv(data,file="csv.csv",row.names=FALSE)

write.table(data,file="table.txt",sep=",",row.names=FALSE,col.names=TRUE)

