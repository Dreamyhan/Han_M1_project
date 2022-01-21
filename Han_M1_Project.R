install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")
library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

cat("Jincong Han") #1.Print your name at the top of the script
help.start()
install.packages("vcd") #2.Install the vcd package
help(package="vcd")
library(vcd)#3.Import the vcd library
salesdata<-c(7,11,15,20,19,11,18,10,6,22)
salesdata
Temperaturedata<-c (69,81,77,84,80,97,87,70,65,90)
Temperaturedata
plot(salesdata,Temperaturedata)#4.Plot a sales ~ temp scatter plot using the data below
mean(Temperaturedata)#5.Find the mean temperature
y<-salesdata[-3]#6.Delete the 3rd element from the sales vector
y
Salesdata<-append(y,16,2)#7.Insert 16 as the 3rd element into the sales vector
Salesdata
name<-c("Tom","Dick","Harry")#8.Create a vector <names> with elements Tom, Dick, Harry
name
y<-matrix(1:10,nrow=5,ncol=2)#9.Create a 5 row and 2 column matrix of 10 integers
y
icsales<-data.frame(Salesdata,Temperaturedata)#10.Create a data frame <icSales> with sales and temp attributes
icsales
str(icsales)#11.Display the data frame structure of icScales
summary(icsales)#12.Display a summary of the icScales data frame

View(Student)
library(readr)
Student <- read_csv("Student.csv")
View(Student)
str(Student)


#summary
plot(Salesdata,Temperaturedata)#new scatter plot with the new set of Salesdata
liner<-lm(Temperaturedata~Salesdata,data=data)
abline(liner)
hist(Salesdata)
hist(Temperaturedata)
boxplot(Salesdata,Temperaturedata)#find outlier of the Salesdata and the Temperaturedata