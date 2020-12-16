# readind data
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
 
#subseting data
sampling_data <- NEI[which((NEI$fips == '06037' | NEI$fips == '24510') & NEI$type == 'ON-ROAD'),]

#agregating and renaming data
totalYearEmission_road_bal_la <- aggregate(x=sampling_data$Emissions,by=list(sampling_data$year,sampling_data$fips),FUN=sum)
totalYearEmission_road_bal_la<-rename(totalYearEmission_road_bal_la,Year=Group.1,City=Group.2,Total.Balt.LA=x)

#adding new variable City.Name
totalYearEmission_road_bal_la <- mutate(totalYearEmission_road_bal_la,City.Name=case_when(City=="24510" ~ "Baltimore City", City=="06037"~ "Los Angeles")

#creating plot 
ggplot(totalYearEmission_road_bal_la , aes(x=Year, y=Total.Balt.LA, col=City.Name))+ geom_line()

#Results - 
