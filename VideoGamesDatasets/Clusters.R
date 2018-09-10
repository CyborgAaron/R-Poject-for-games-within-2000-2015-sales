ds	=	read.csv('vgsales.csv')	
ds	=	ds[7:9]	

#NUMBER OF clusters
set.seed(10)
wcss = vector()
for(i in 1:100) wcss[i] = sum(kmeans(ds,i)$withinss)
plot (1:100)
     wcss
     type = 'b'
     main = paste('the elbow method for game sales japan and america')
     xlab = 'Number of clusters'
     ylab = 'WCSS'
     set.seed(100)	
     kmeans	=	kmeans(x	=	ds,	centers	=	4,	nstart=	25)	
     kmeans
     y_kmeans	=	kmeans$cluster
     #	Visualising	the	clusters	
     library(cluster)	
     clusplot(ds,	
              y_kmeans,	
              lines	=	0,	
              shade	=	TRUE,	
              color	=	TRUE,	
              labels	=	75,	
              plotchar	=	FALSE,	
              span	=	TRUE,	
              main	=	paste('Clusters	of	customers'),	
              xlab	=	'Japansales',	
              ylab	=	'globalsales')	