# Eclat
#install.packages('arules')
library(arules)
dataset = read.csv('Managerial and Decision Economics2013 VideoGamesDataset.csv',header = FALSE)
dataset = read.transactions('Managerial and Decision Economics2013 VideoGamesDataset.csv',sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset,topN = 10)

#TRaining Eclat on the dataset
rules = eclat(data = dataset, parameter = list(support = 0.004, minlen = 2)

#Visualising the results
inspect(sort(rules,by = 'support')[1:10])
