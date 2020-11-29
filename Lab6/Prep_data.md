## Лабораторна робота № 6. Візуалізація споживання електричної енергії. В цій лабораторній роботі ми будемо аналізувати набор даних з UC Irvine Machine Learning Repository – популярного репозиторію для наборів даних для машинного навчання. Набір даних: Electric power consumption [20Mb]. Опис: Вимірювання споживання електричної енергії в одному домогосподарстві з інтервалом в одну хвилину протягом періоду майже 4 роки. Присутні вимірювання різних електричних показників та споживання електричної енергії по деяким частинам домогосподарства. Набір даних містить 9 змінних (variable), опис яких можна найти на сторінці набору даних: UCI web site.

```{R}
data_analysis <- read.table("G:\\KNU\\6 курс\\R\\household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
data_sample <- subset(data_analysis , Date=="1/2/2007" | Date =="2/2/2007")

data_sample$DateTime<-paste(data_sample$Date, data_sample$Time)
data_sample$DateTime<-strptime(data_sample$DateTime, "%d/%m/%Y %H:%M:%S")
data_sample$Date<-as.Date(data_sample$Date, "%d/%m/%Y")

```
