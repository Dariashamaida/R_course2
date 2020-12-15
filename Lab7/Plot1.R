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

#adding new variable
totalYearEmission <-mutate(totalYearEmission,Total=x/1000) 
totalYearEmission 
  Group.1       x    Total
1    1999 7332967 7332.967
2    2002 5635780 5635.780
3    2005 5454703 5454.703
4    2008 3464206 3464.206

#renaming variable
totalYearEmission<-rename(totalYearEmission,Year=Group.1)
 totalYearEmission
  Year       x    Total
1 1999 7332967 7332.967
2 2002 5635780 5635.780
3 2005 5454703 5454.703
4 2008 3464206 3464.206

#creating plot
plot(totalYearEmission$Year,totalYearEmission$Total, type='b', xlab='Year', ylab='Total Emission of PM2.5(tonns)')

#Results - As the obtained plot shows, total PM2.5 emissions in the United States have a tendency for decreasing from 1999 to 2008
