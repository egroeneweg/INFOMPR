install.packages("OpenImageR")
library(OpenImageR)
mnist.dat <- read.csv("C:/Users/erno2/Documents/Git repos/INFOMPR/Assignment/mnist.csv")

imageShow(matrix(as.numeric(mnist.dat[380,-1]),nrow=28,ncol=28,byrow=T))

labels <- mnist.dat$label

unlabelled = mnist.dat[,!(names(mnist.dat) %in% c("label"))] 

categories <- factor(labels)

means <- colMeans(unlabelled)

plot(means)


