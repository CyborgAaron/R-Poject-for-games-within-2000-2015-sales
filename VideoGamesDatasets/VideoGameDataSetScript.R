ds <- read.csv('VideoGamesDataset2013.csv')
head(ds)
colnames(ds)
View(ds)
write.table(ds, "VideoGamesDataset2013.txt", sep="\t",row.names = FALSE)
ds[1,18]
ds[,18]
ds[1,]
u <- c("red", "yellow", "blue")
is.vector(u)
my.array <-array(1:24, dim=c(18,17,1))
my.array
Publisher<-list("Electronic Arts, Inc.","Nintendo")
assortment <-list("Review Score", 5, Publisher)
assortment

#Exploring Data
dim(ds)
str	(ds)	
summary(ds)	
summary(subset(ds,	YearReleased	>=	60))	
summary(ds$ses)



library(ggplot2)	
ggplot(ds,	aes(x	=	ReviewSq))	+	geom_histogram()
ggplot(ds,	aes(x	=	Usedprice))	+	geom_histogram(binwidth = 5,	fill="gray")	

ggplot(ds)	+	geom_bar(aes(x=YearReleased),	fill="gray")		