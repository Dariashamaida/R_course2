# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
 #aggrigating data - let`s try new approch
 totalYearEmission_Balt_type<-NEI %>% subset(fips=="24510") %>% group_by(year, type) %>% summarise(Total=sum(Emissions))
