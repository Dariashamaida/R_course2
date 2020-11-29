# Лабораторна робота № 3

### В цій лабораторній роботі необхідно зчитати WEB сторінку з сайту IMDB.com зі 100 фільмами 2017 року виходу за посиланням «http://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature». Необхідно створити data.frame «movies» з наступними даними: номер фільму (rank_data), назва фільму (title_data), тривалість (runtime_data). Для виконання лабораторної рекомендується використати бібліотеку «rvest». CSS селектори для зчитування необхідних даних: rank_data: «.text-primary», title_data: «.lister-item-header a», runtime_data: «.text-muted .runtime». Для зчитування url використовується функція read_html, для зчитування даних по CSS селектору – html_nodes і для перетворення зчитаних html даних в текст - html_text. Рекомендується перетворити rank_data та runtime_data з тексту в числові значення. При формуванні дата фрейму функцією data.frame рекомендується використати параметр «stringsAsFactors = FALSE». В результаті виконання лабораторної роботи необхідно відповісти на запитання.


#### Installing package; creating variable webdata and reading the html file; getting rank, title and runtime data
```{R}
install.packages('rvest')
library('rvest')

webdata<-read_html("http://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature")

rank_1 <- html_nodes(webdata, '.text-primary')
rank_data<-as.integer (html_text(rank_1 , trim = TRUE))
rank_data
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25
 [26]  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50
 [51]  51  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75
 [76]  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
 
title_1 <- html_nodes(webdata, '.lister-item-header a')
title_data <-  html_text(title_1, trim = TRUE) 
head(title_data,n=10)
 [1] "Тор: Раґнарок"                   "Найвеличніший шоумен"            "Той, хто біжить по лезу 2049"   
 [4] "Воно"                            "Ліга справедливості"             "Назви мене своїм ім'ям"         
 [7] "Journey's End"                   "Людина-павук: Повернення додому" "Вартові Галактики 2"            
[10] "Bushwick"  

install.packages("stringr")
library(stringr)

runtime_1 <- html_nodes(webdata, '.text-muted .runtime')
runtime_data <- as.numeric(str_remove(html_text(runtime_1, trim = TRUE), 'min'))
runtime_data 
  [1] 130 105 164 135 120 132 107 133 136  94 104 141 104 137 106 129 111 113 105 152 141 113 115 133 122
 [26] 121 114 119 129 140 154 107 109  94 102 116 118 104 123  85 121 121 116 103  94 122 123  92 135 107
 [51] 126 113 136 119 130  92  95  89 118 125 118 108 134 115 134 101 102 111 117 110 136  90 104 119 107
 [76]  96 118 104 115 110 101 111  87 117 126 120 104 103 140 114 132 124 104 132  93 107 118 111 107 102

```










### 1. Виведіть перші 6 назв фільмів дата фрейму.
### 2. Виведіть всі назви фільмів с тривалістю більше 120 хв.
### 3. Скільки фільмів мають тривалість менше 100 хв.




