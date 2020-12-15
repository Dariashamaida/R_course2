# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
 #subsetting the corect records
 Baltimor <- subset(NEI, fips == 24510)
 
 #aggrigating data
 totalYearEmission_Baltimor <- aggregate(x=Baltimor $Emissions,by=list(Baltimor $year),FUN=sum)
 
 #adding new variable and renaming Group.1 into Year
 totalYearEmission_Baltimor  <-mutate(totalYearEmission_Baltimor ,Total=x/1000) 
 totalYearEmission_Baltimor  <-rename(totalYearEmission_Baltimor,Year=Group.1)
 
 #creating plot - lets try blue color
 plot(totalYearEmission_Baltimor$Year,totalYearEmission_Baltimor$Total, type='b', xlab='Year', ylab='Total Emission of PM2.5 in Baltimor (tonns)',col='blue',xaxt = "n")
 axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008)) 

 #Results - As the obtained plot shows, total PM2.5 emissions in Baltimor decreased in 2002, then increased in 2005 and finally rapidly decreased in 2008
 
 
 
