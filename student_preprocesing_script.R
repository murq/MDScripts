#set working directory to whatever you need
setwd("D:/Documents/Feina/FIB/4B/MD")

#read.csv
dd <- read.table("student-por.csv",header=T, sep=";");

class(dd)
dim(dd)
n<-dim(dd)[1]
n
K<-dim(dd)[2]
K

names(dd)
attach(dd)

# Transformacio a nominal
dd <- transform(dd, Medu = as.factor(Medu))
levels(dd$Medu) <- c("None", "Primary education (4th grade)","5th to 9th grade","Secondary education","Higher education")
dd <- transform(dd, Fedu = as.factor(Fedu))
levels(dd$Fedu) <- c("None", "Primary education (4th grade)","5th to 9th grade","Secondary education","Higher education")
dd <- transform(dd, traveltime = as.factor(traveltime))
levels(dd$traveltime) <- c("Less than 15 minutes", "From 15 to 30 minutes","From 30 minutes to 1 hour","More than 1 hour")
dd <- transform(dd, studytime = as.factor(studytime))
levels(dd$studytime) <- c("Less than 2 hous","2 to 5 hours","5 to 10 hours","More than 10 hours")
dd <- transform(dd, failures = as.factor(failures))
levels(dd$failures) <- c("Other","1","2","3")


dd <- transform(dd, famrel = as.factor(famrel))
levels(dd$famrel) <- c("very bad", "bad","sufficient","good","very good")
dd <- transform(dd, freetime = as.factor(freetime))
levels(dd$freetime) <- c("very low", "low","sufficient","high","very high")
dd <- transform(dd, goout = as.factor(goout))
levels(dd$goout) <- c("very low", "low","sufficient","high","very high")
dd <- transform(dd, Dalc = as.factor(Dalc))
levels(dd$Dalc) <- c("very low", "low","sufficient","high","very high")
dd <- transform(dd, Walc = as.factor(Walc))
levels(dd$Walc) <- c("very low", "low","sufficient","high","very high")
dd <- transform(dd, health = as.factor(health))
levels(dd$health) <- c("very bad", "bad","sufficient","good","very good")