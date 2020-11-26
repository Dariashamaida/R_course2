# Лабораторна робота № 1

### 1. За допомогою download.file() завантажте любий excel файл з порталу http://data.gov.ua та зчитайте його (xls, xlsx – бінарні формати, тому встановить mode = “wb”. Виведіть перші 6 строк отриманого фрейму даних.

```{R} 
install.packages("readxl") 
library(readxl)

data_for_download<-"https://data.gov.ua/dataset/93d77445-7985-4a07-a4af-75cbed12199b/resource/a8d046d9-30d7-436a-b156-33c7d2b22885/download/plan_legislation_2020.xlsx"
folder_for_download<-"G:/KNU/6 курс/R/plan_for_prep.xlsx"
download.file (data_for_download, folder_for_download, mode = "wb")

table_plan<-read_xlsx(folder_for_download)
head(table_plan, n=6)

# A tibble: 6 x 15
  identifier title legalActTitle type  objective isVersionOfІD isVersionOfTitle creator creatorID developmentEndD~
  <chr>      <chr> <chr>         <chr> <chr>     <chr>         <chr>            <chr>   <chr>     <chr>           
1 Ідентифік~ Назв~ Назва проект~ Вид ~ Ціль при~ Ідентифікато~ Назва акту, до ~ Повна ~ Ідентифі~ Кінець строку р~
2 id-2020-1  Про ~ Наказ Мініст~ нови~ Встановл~ null          null             Директ~ 37552996  44012           
3 id-2020-2  Про ~ Постанова Ка~ нови~ Впровадж~ null          null             Директ~ 37552996  44012           
4 id-2020-3  Про ~ Наказ Мініст~ нови~ Установл~ null          null             Директ~ 37552996  44012           
5 id-2020-4  Про ~ Закон Україн~ нови~ Погашенн~ null          null             Директ~ 37552996  44012           
6 id-2020-5  Про ~ Закон Україн~ нови~ Забезпеч~ null          null             Департ~ 37552996  44195           
# ... with 5 more variables: accessURL <chr>, bibliographicCitation <chr>, dateSubmitted <chr>,
#   regulatoryAgencyPrefLabel <chr>, regulatoryAgencyIdentifier <chr>
```

### 2. За допомогою download.file() завантажте файл getdata_data_ss06hid.csv за посиланням https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv та завантажте дані в R. Code book, що пояснює значення змінних знаходиться за посиланням https://www.dropbox.com/s/dijv0rlwo4mryv5/PUMSDataDict06.pdf?dl=0 Необхідно знайти, скільки property мають value $1000000+

```{R}
housing_data<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
folder_for_data<-"G:/KNU/6 курс/R/housing.csv"
download.file (housing_data, folder_for_data)

table_housing<-read.csv(folder_for_data)

sample_data<-subset(table_housing, VAL==24)
nrow(sample_data)
[1] 53

##### or

length(which(table_housing$VAL==24))
[1] 53
```

### 3. Зчитайте xml файл за посиланням http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml Скільки ресторанів мають zipcode 21231?

```{R}
install.packages("XML") 
library(XML)

hml_data_web<-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
hml_next<-xmlTreeParse(hml_data_web, useInternal = TRUE)
root_hml<-xmlRoot(hml_next)

zipcode<-xpathSApply(root_hml, "//zipcode", xmlValue)
length(which(zipcode==21231))
[1] 127
```
