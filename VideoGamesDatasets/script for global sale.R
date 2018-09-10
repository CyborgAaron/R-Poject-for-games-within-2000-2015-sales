
ds<- read.csv('vgsales.csv')
head(ds)
colnames(ds)
View(ds)
write.table(ds,"vgamesale.txt", sep="\t", row.names = FALSE)
ds[2,11]
ds[,11]
ds[2,]
u <- c("red","yellow","blue")
is.vector(u)
my.array <-array(1:6, dim = c(11,4,2))
my.array
is.data.frame(ds)
gamerank<- list("eu_sales","global_Sales")
assortment<- list("VideoGames",5, gamerank)
assortment

dim(ds)
str	(ds)	
summary(ds)	
summary(subset(ds,	Global_Sales	>=	60))	
summary(ds$ses)
#install.packages(scales)
#library(scales)
#library(ggplot2)

ggplot(ds, aes(x = Global_Sales)) + geom_histogram()
ggplot(ds, aes(x = Global_Sales)) + geom_histogram(binwidth = 10, fill ="gray")

ggplot(ds) + geom_density(aes(x = JP_Sales)) + scale_x_continuous()
ggplot(ds) + geom_density(aes(x = JP_Sales)) + scale_x_log10(breaks=c(100,1000,10000,100000), labels = global_sales)+annotation_logticks(sides=bt)

ggplot(ds, aes(x=Global_Sales, y=EU_Sales)) + geom_point() +geom_smooth()+ ylim(0, 200000)
ds2 <- subset(ds,(ds$Global_Sales > 0 & ds$Global_Sales < 100 & ds $EU_Sales > 0))
ggplot(ds2,aes(x=Global_Sales, y=EU_Sales)) + geom_point() + geom_smooth() + ylim(0, 200000)

ggplot(ds)	+	geom_bar(aes(x = gamerank, fill = gamerank))	
ggplot(ds)	+	geom_bar(aes(x = Global_Sales, fill = gamerank),	position="dodge")	
ggplot(ds)	+	geom_bar(aes(x = EU_Sales,	fill = gamerank),	position="fill")	
ggplot(ds)	+	geom_bar(aes(x = gamerank,	fill = EU_Sales	),	position="dodge")	+	theme(axis.text.x	=	element_text(angle	=	45,	hjust	=	1))
#continuous histogram
