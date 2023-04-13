### R-Studio ###


library(base)
library(dplyr)
library(katadasaR)
library(quanteda)
library(magrittr)


#membaca file csv ke R
mydata<-read.csv("file-2.csv")

#konversi semua teks ke lowercase
mydata<-data.frame(lapply(mydata,function(x) if(is.factor(x) | is.character(x)) 
tolower(as.character(x)) else x))

#save ke csv
write.csv(mydata, "file-1_lowercase.csv", row.names = FALSE)

#membaca file csv ke R (lowercased)
mydata<-read.csv("file-1_lowercase.csv")

# Remove all punctuation from text columns
mydata <- data.frame(lapply(mydata, function(x) if(is.factor(x) | is.character(x)) gsub('[[:punct:]]', '', x) else x))

#save file non-punct
write.csv(mydata,"file-1_lowercase_non-punct.csv", row.names = FALSE)
