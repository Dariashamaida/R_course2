# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
#aggrigating data - let`s try new approch
 totalYearEmission_Balt_type<-NEI %>% subset(fips=="24510") %>% group_by(year, type) %>% summarise(Total=sum(Emissions))

#creating plot, using ggplot
ggplot(nei_balti_type, aes(x=year, y=Total, col=type)) + geom_line()

#Results - As the obtained plot shows, total PM2.5 emissions in Baltimor taking into account the type significantly differ - The greatest amount of emissions was produced by non-point type,
#while non-road and on-road have have produced a bit emissions. During the period all types exept point showed the tendency for decreasing. But point emissions were rapidly increased in 2005,
#but then were decreased too.
