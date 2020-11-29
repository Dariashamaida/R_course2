# Лабораторна робота № 4

### Дані для цієї лабораторної роботи взяті з «https://www.kaggle.com/benhamner/nips-2015-papers» Для виконання лабораторної необхідно завантажити файл бази даних SQLite за посиланням: «https://www.dropbox.com/s/pf2htfcrdoqh3ii/database.sqlite?dl=0». В цьому файлі містяться дані по доповідям на Neural Information Processing Systems (NIPS) яка є однією з ведучих конференцій по машинному навчанню в світі.

```{R}
install.packages("RSQLite")
library(RSQLite)

install.packages("DBI")
library(DBI)

conn <- dbConnect(RSQLite::SQLite(), "G:\\KNU\\6 курс\\R\\database.sqlite")
res <- dbSendQuery(conn, "SELECT Name as Author FROM Authors ORDER BY Name")
df <- dbFetch(res, n=10)
dbClearResult(res)
dbDisconnect(conn)

 df
               Author
1       ABHISEK KUNDU
2      Aaditya Ramdas
3  Aaron C. Courville
4         Aaron Klein
5          Aaron Roth
6         Aarti Singh
7   Abbas Abdolmaleki
8  Abhradeep Thakurta
9          Adam Smith
10      Adarsh Prasad

```

