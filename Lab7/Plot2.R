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
 plot(totalYearEmission_Baltimor  $Year,totalYearEmission_Baltimor  $Total, type='b', xlab='Year', ylab='Total Emission of PM2.5 in Baltimor (tonns)',col='blue')
 
 #Results - As the obtained plot shows, total PM2.5 emissions in Baltimor have a tendency for decreasing from 1999 to 2008
 
 
 
