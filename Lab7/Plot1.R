# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")


#aggrigating data
totalYearEmission <- aggregate(x=NEI$Emissions,by=list(NEI$year),FUN=sum)
totalYearEmission 
  Group.1       x
1    1999 7332967
2    2002 5635780
3    2005 5454703
4    2008 3464206
