# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
#subsetting data
Balt_onroad <- NEI[which(NEI$fips == '24510' & NEI$type == 'ON-ROAD'),]

#agregating and renaming data
totalYearEmission_road_balt <- aggregate(x=Balt_onroad $Emissions,by=list(Balt_onroad $year),FUN=sum)
totalYearEmission_road_balt<-rename(totalYearEmission_road_balt,Year=Group.1,Total.Road.Balt=x)

#creating plot 
plot(totalYearEmission_road_balt$Year,totalYearEmission_road_balt$Total.Road.Balt, type='b', xlab='Year', ylab='Total On-road emissions in Baltimor',col='blue',xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008))

#Results
