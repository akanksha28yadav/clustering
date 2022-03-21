## importing the libraries
library(ISLR)
library(ggplot2)

## data visualization
pl=ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))
print(pl+geom_point(size=4))

## creating the model
set.seed(101)
irisCluster=kmeans(iris[,1:4],3,nstart = 20)
print(irisCluster)

## comparing the predicted values and actual result
table(irisCluster$cluster,iris$Species)

## visualizing the predicted values with actual data
library(cluster)
clusplot(iris,irisCluster$cluster,color=T,shade=T)
