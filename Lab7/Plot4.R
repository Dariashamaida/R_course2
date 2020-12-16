# reading data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
 #merging two datasets
 merged_data <- merge(NEI, SCC, by.x ='SCC', by.y='SCC' )
 
 #subsetting coal records
 sample_data <- subset(merged_data , grepl("(Comb)(.)+(Coal)", merged_data $Short.Name))
 
 #agregating and renaming data
 totalYearEmission_coal <- aggregate(x=sample_data $Emissions,by=list(sample_data $year),FUN=sum)
  totalYearEmission_coal<-rename(totalYearEmission_coal,Year=Group.1,Total.Coal=x)
  
 #creating plot 
 plot(totalYearEmission_coal$Year,totalYearEmission_coal$Total.Coal, type='b', xlab='Year', ylab='Total Coal Emissions of PM2.5 (tonns)',col='red',xaxt = "n")
 axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008))
 
 #Results - As the obtained plot shows,the coal emissions rapidly decreased from 2005 year.
