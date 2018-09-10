#apriori alogthrim
install.packages('arules')
library(arules)
dataset = read.csv('50Topgames.csv', header = FALSE)
dataset = read.transactions('50Topgames.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 15)

#Using apriori just change to eclat 
rules = apriori(data = dataset,parameter = list(support = 0.050, confidence = 0.5))

#eclat
#rules = eclat(data = dataset, parameter = list(support = 0.050, minlen = 2)) 
#Seeing the results
inspect(sort(rules, by = 'confidence')[1:10])