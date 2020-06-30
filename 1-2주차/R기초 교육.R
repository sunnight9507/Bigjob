## 단축키
# 주석 : Ctrl + Shift + C

############### 1. introduction ###############

### 1) The age of data
## 데이터의 시대
# - 데이터의 폭발적인 증가
# - 데이터를 잘 다룰 줄 아는 기업, 개인이 성공하는 시대가 도래

### 2) Data
## 정의
# 추정과 추론의 근거가 되는 사실(옥스포드 사전)
# 어떤 주제로 모아진 값들의 집합

## 형태
# 정형 / 비정형

### 3) 빅데이터
# 기존 데이터 베이스 관리도구의 데이터 수집, 저장, 관리, 분석 역량을 넘어서는 데이터

## 3V
# Volume(크기) / Variety(다양성) / Velocity(속도)

### 4) 데이터 분석 절차
# Problen Definition
# Data Management
# Exploration
# Analysis & Interpretation
# Reporting

## 분석 도구
# SAS / SPSS / Matlab / R / Python 

### 5) Intall R, Rstudio
# 실행 단축키 : Ctrl + Enter



############### 2. R기초(1) ###############

### 1) R 기본사용
## 특징
# 자료분석, 통계작업에 특화된 공개 SW
# Java, C 프로그램과 연동 가능
# Open Source SW
# 뛰어난 시각화 기능 제공

## 계산기
# 사칙연산자 : + - * / ^
# 나머지 : %%
# 주석문 : #
2 + 3
(2+1)/3

## 함수 사용하기
# log() sqrt() max() min() ...
log(10)
sqrt(25)


### 2) 변수(variable)
## 정의
# 어떤 값을 임시로 보관해 놓기 위한 저장소
# 저장된 값이 바뀔 수 있다는 의미에서 변수라고 함
A <- 10
B <- A + 20
a <- "A"
A + a # 에러 발생
c <- 1; d <- 0 # 한줄에 여러 명령문을 입력

## 변수 이름 규칙
# 첫글자는 문자, .(dot)으로 시작
# 그 이후에는 문자, 숫자, dot, underline 사용 가능
# 대소문자 구분

## 변수 값 할당
# <- / =

## 변수 내용 출력
print(a)
cat('a에 할당된 값은 ',a,'이다. \n')

## R studio 단축키
# <- 쉽게 입력하기 : Alt + -
# Script창에서 Console창으로 이동 : Ctrl + 2
# Console창에서 Script창으로 이동 : Ctrl + 1

## 자료형
# 숫자
# 문자
# 논리형
# 특수한 값
# - NULL : 비어있는 값, 자료형도 없고 길이도 0
# - NA : 결측값(missing value)
# - NaN : 수학적으로 정의가 불가능한 값(ex : sqrt(-3))
# - inf, -inf : 양, 음의 무한대

### 3) 벡터(vector)
## 정의
# 1차원 데이터를 저장하기 위한 자료 구조를 R에서는 벡터라고한다.
# 수학적 의미의 vector와 다루는 방법이 동일
# 동일한 자료형의 값이 여러 개 연속되어 있음

## 벡터 만들기
# c() 함수를 이용해서 생성
x <- c(1,2,3)
y <- c("a","b","c")

# 하나의 벡터에 문자, 숫자를 섞으면 모두 문자형으로 인식

# 연속적인 숫자로 이루어진 벡터 만들기
v1 <- 50:90
v2 <- c(1,2,3:10)

# 일정 간격의 숫자로 구성된 벡터 만들기
# seq()
v3 <- seq(1, 101, 3)

# 반복값에 의한 벡터 만들기
# rep()
v4 <- rep(1, times = 5)
v5 <- rep(1:3, times = 3)
v6 <- rep(1:3, each = 3)

## 데이터 벡터는 요소 값에 이름 부여 가능
# names() 함수 이용
# 요소값에 이름을 붙여도 계산에는 아무 영향을 미치지 않음.
# 단지 값의 의미를 분명하게 밝히는 역할
score <- c(90, 70, 80)
names(score) <- c("A","B","C")
score

## 데이터 벡터에서 값 추출하기
# 한개의 값 추출
d <- c(1,2,3,4,5)
d[1]

# 여러 값 추출출
d[1:3]
d[c(1,3,5)]
d[-2] # -는 '제외'를 의미
d[-c(3:5)]

# 이름으로 값 추출하기
GNP <- c(1000, 500, 2000)
names(GNP) <- c("Korea", "Japan", "Nepal")
GNP[1]
GNP["Korea"]
GNP[c("Korea", "Nepal")]

### 4) 벡터 연산, 함수, 논리값
d <- c(1,4,7,3,8)
2*d
d-5
3*d+4

## 데이터 벡터간 연산
# 두 벡터의 연결
x <- c(1,2,3)
y <- c(4,5)
z <- c(x,y)

# 두 벡터의 합
x <- c(1,2,3)
y <- c(4,5,6)
x + y

## 데이터 벡터에 적용 가능한 함수들
# sum() : 합
# mean() : 평균
# median() : 중앙값
# var() : 분산
# sd() : 표준편차
# sort() : 정렬해 출력 / default : 오름차순 decreasing = True : 내림차순
# range() : 범위
# length() : 자료의 갯수

## 함수(function)
# sort(d, decreasing = FALSE)
# d, FALSE : 매개변수 값
# decreasing : 매개변수 이름

## 함수의 호출
# 함수명(매개변수명1 = 값1, 매개변수명2 = 값2)

## 논리연산자 : <, <=, >, >=, ==, !=, |(or), &(and)
d <- c(1:10)
d[d>5]
sum(d>5) # 5보다 큰 값의 개수 출력
sum(d[d>5]) # 5보다 큰 값의 합계를 출력

cond <- d > 3 & d < 9 # 조건을 변수에 저장장
d[cond] # 조건에 맞는 값들을 선택

### R 사용 Tip : help
## 함수의 사용법 알고 싶을 때(함수 이름을 알면)
# help(sum) / ? sum
## 함수의 사용법 알고 싶을 때(함수 이름을 모르면)
# help.search("average")

## history()
# R은 최근에 사용한 명령어를 25개까지 기억
# 위아래 화살표 키를 이용해서 이전에 사용한 명령어를 불러 올 수 있다.
# history() 함수를 이용하여 25개의 목록을 한눈에 확인 가능


############### 3. R 기초(2) ###############

### 1) matrix
# 모든 저장된 데이터의 데이터 타입이 동일


### 2) data.frame
# 서로 다른 유형의 데이터 타입을 가진 값들을 저장

## matrix 생성
# nrow : 행의 수 / ncol : 열의 수
z <- matrix(1:20, nrow=4, ncol=5)
z <- matrix(1:20, nrow=4, ncol=5, byrow = TRUE) # 행 우선 배치

# 기존의 vector(들) 또는 matrix(들)을 결합해 새로운 행렬을 만들 수 있다.
x <- 1:4
y <- 5:8

m1 <- cbind(x,y) # 열방향 결합
m2 <- rbind(x,y) # 행방향 결합
m1
m2

m3 <- rbind(m2, x)
m4 <- cbind(z, x)

## matrix 안에서의 위치 지정
z[2,3] # 2행 2열
z[2,] # 2행
z[,4] # 4열

## 행과 열에 이름 붙이기
rownames(z) <- c("row1", "row2","row3","row4")
colnames(z) <- c("a","b","c","d","e")
z

## 행, 열 이름으로 데이터 접근하기
z[, "e"]
z["row1",]

### 2) data frame
## data frame 만들기
city <- c("Seoul","Tokyo","Washington") 
rank <- c(1,3,2) 
city.info <- data.frame(city, rank)
# 컬럼별로 데이터 타입이 동일해야 된다.

is.data.frame(iris) # 객체가 data.frame 인지 확인
iris[,"Species"] # 결과가 vector, iris[,5] 와 동일
iris["Species"] # 결과가 150x1 data frame
iris$Species # 결과가 vector (matrix에서는 잘안됨)

iris[,c(1:2)] # 앞의 2개 컬럼 데이터 보기
iris[c(1,3,5),]
iris[,c("Sepal.Length","Species")]
iris[1:10,]
iris[1:10,c(1,3)]

### 3) matrix, data frame 다루기
dim(iris) # 행과 열의 수 보이기
nrow(iris) # 행의 수 보이기
ncol(iris) # 열의 수 보이기
names(iris) # 컬럼이름 보이기, colnames() 와 동일
head(iris) # 데이터셋의 앞부분 일부 보기
tail(iris) # 데이터셋의 뒷부분 일부 보기

str(iris) # 데이터셋 요약 보기
unique(iris[,5]) # 종의 종류 보기(중복 제거)
table(iris[,"Species"]) # 품종의 종류별 instance count

colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균

## 행과 열 변환(transpose)
z <- matrix(1:10, nrow=2, ncol=5)
z
t(z) # 행과열 방향 변환

## subset() : 조건에 맞는 행(row) 추출
IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2

# matrix간에도 사칙연산 가능(행, 열의 수가 동일할 때)
# 행열 곱 : %*%

# 자료구조의 확인
class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)

# data frame to matrix
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

# matrix to data frame
st <- data.frame(state.x77)
head(st)
class(st)

### 4) 파일에 데이터 읽기 / 쓰기
## 파일에서 데이터 읽어오기
# Excel에서 .csv 포멧으로 저장
# read.csv() 함수 이용
# 주의 : 디렉토리 구분자는 "/"를 사용해야 함
setwd("C:/Users/user/Desktop/Rworks")
mydata <- read.csv("test.csv", header = TRUE)

## 파일에 데이터 저장
mynew <- mydata[,c(2,3)] # 2,3열만 추출 
write.csv(mynew, "kid_new.csv", 
          row.names=F, quote=F)

## 읽고 쓸 파일을 지정하는 여러가지 방법
setwd("C:/Users/user/Desktop/Rworks")
mydata <- read.csv("test.csv", header = TRUE)

mydata <- read.csv("C:/Users/user/Desktop/Rworks/test.csv",
                   header = TRUE)

# 직접 파일 선택
mydata <- read.csv(file.choose(),
                   header = TRUE)

## read.csv 실행시 한글 깨짐 해결
# (1) Rstudio 한글 옵션 설정 : UTF-8
# 메뉴 - [Tools] - [Global Option] - [Code] - [Saving]

# (2) Excel에서 파일 읽은 후
# -> "다른 이름으로 저장" 파일 포멧은 .csv(UTF-8)

# (3) R에서 파일 읽을 떄 encoding 옵션 추가
setwd("C:/Users/user/Desktop/Rworks")  # 파일이 있는 폴더 지정
mydata <- read.csv("test.csv", header = TRUE,
                   encoding="utf-8")
# 주요 한글 인코딩 방법
# "euc-kr", "utf-8"

### 5) list와 factor
## List
# 벡터와 비슷하나 벡터와 달리 여러 자료형의 데이터를 섞어서 저장 할 수 있다.
# (심지어 벡터, data frame등도 원소로 저장 가능)
member <- list(name='kim',address='pusan',tel='010-1234-5678', age=20, married=FALSE)
member

member[[1]]
member$name

## factor
# vector와 유사한 자료구조
# 문자형 변수로 특정 종류의 값만을 가질 수 있는 데이터 타입
blood.type <- factor(c("A", "A", "AB", "O", "B"))
blood.type
is.factor(blood.type)
# error : blood.type[6] <- "D"

# factor는 Label 순서대로 숫자로 변환할 수 있다.
blood.type
as.numeric(blood.type)

### R Tip
## Package 설치
# R에는 수많은 함수들이 있으며 비슷한 기능을 하는 함수들끼리 묶어 패키지 형태로 제공
# 자주 사용하는 기본적인 함수들은 base 패키지에 있다.
# 기본 패키지에 없는 함수를 사용하고자 할 때는
# 1) 그 함수가 포함된 package를 install(한번만 하면 된다.)
# 2) package를 불러온다.(library, require 함수 이용)
# 3) 원하는 함수를 사용.

## 패키지 목록 확인(Rstudio) 가능
# Package - installl - (원하는 패키지 install)
# install.packages("원하는 패키지")

## 패키지의 함수 사용
library(ggplot2) # 패키지 불러오기

scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

## R studio에서 matrix, data frame 편리하게 보기
View(iris)


############### 4. 일변량자료탐색 ###############

### 1) 자료의 종류
# 통계 기법은 자료를 정리하고 분석할 수 있는 강력한 수단
# 데이터 분석에서도 많은 부분에서 통계적 기법을 필요로 한다.

## 자료의 종류
# 질적 자료(범주형 자료)
# - 원칙적으로 숫자로 표시될 수 없는 자료
# ex) 교육수준 : 초졸, 중졸, 고졸 / 성별 : M, F

# 양적 자료(연속형 자료)
# - 자료 자체가 크기가 있는 숫자로 표현됨
# 이산자료 : 정수값을 취할 수 있는 자료(각 세대의 자녀 수)
# 연속자료 : 실수 값을 취할 수 있는 자료(키, 몸무게, 온도)

## 일변량 자료
# 분석대상이 되는 변수의 개수가 1개
# ex) 단국대 학생들의 몸무게 분포를 분석
# vector에 저장하여 분석

## 다변량 자료
# 분석대상이 되는 변수의 개수가 2개 이상인 경우
# 변수가 2개인 경우를 특별히 이변량 자료라고함
# ex) 출생 지역과 몸무게가 상관관계가 있는지 분석
# matrix, data frame에 저장해 분석

### 2) 일변량 질적자료의 분석

## 도수분포표 작성
ans=c("Y","Y","N","Y","Y") 
table(ans) # 도수분포표 출력
table(ans)/length(ans) # 비율 출력

## 막대그래프 작성
favorite.color <- c("red", "green", "yellow", "red", "green", "red", "red")
sum <- table(favorite.color) # 도수분포표
sum
barplot(sum, main="Favorite color")

## 막대그래프 사례
head(mtcars)              # 자동차 모델별 제원
carb <- mtcars[,"carb"]   # 기화기 수
table(carb)               # 도수분포표
barplot(table(carb), 
        main="Barplot of Carburetors",
        xlab="#of carburetors",  
        ylab="frequency")
# table() : 주어진 자료로부터 도수 분포표를 그려준다.

## barplot() 매개변수
# angle, density, col : 막대를 칠하는 선분의 각도, 선분의 수, 선분의 색 지정
# legend : 오른쪽 상단에 범례추가
# names : 각 막대의 라벨을 정하는 문자열 벡터를 지정
# width : 각 막대의 상대적인 폭을 벡터로 지정
# space : 각 막대 사이의 간격을 지정
# beside : TRUE를 지정하면 각각의 값마다 막대를 그림
# horiz : TRUE를 지정하면 막대를 옆으로 눞혀서 그림

## 한 화면에 그래프 여러 개 그리기
par(mfrow=c(1,3)) # 1x3 윈도우 생성
barplot(table(mtcars$carb), 
        main="Barplot of Carburetors",
        xlab="#of carburetors",  
        ylab="frequency",
        col="blue")
barplot(table(mtcars$cyl), 
        main="Barplot of Cylender",
        xlab="#of cylender",  
        ylab="frequency",
        col="red")
barplot(table(mtcars$gear), 
        main="Barplot of Grar",
        xlab="#of gears",  
        ylab="frequency",
        col="green")

# 다양한 막대 그래프 예제
# http://www.theanalysisfactor.com/r-11-bar-charts/
# R 에서 지원하는 color 이름
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

## 원 그래프 작성
favorite.color <- c("red", "green", "yellow", "red", "green", "red", "red")
sum <- table(favorite.color ) # 도수분포표
pie(sum, main="Favorite color")


### 3) 일변량 양적 자료의 분석
# 양적자료는 질적자료에 비해 분석 방법이 많다.
# ex) 평균, 중앙값, 4분위수, 분산, Boxplot, Histogram, 나무-잎 그림

## 평균
# 균형점, 무게중심

## 중앙값
# 어떤 주어진 값들을 정렬했을 때 가장 중앙에 위치하는 값을 의미

## 절사평균
# 표본중에서 작은값 N%와 큰값 N%를 제외하고 나머지 (100-2N)%의 자료만 사용하여 구한 평균


## 4분위수
# 측정값을 4등분하는 백분위수
# 제 1사분위수(Q1) : 제 25백분위수
# 제 2사분위수(Q2) : 제 50백분위수, 중앙값
# 제 3사분위수(Q3) : 제 75백분위수
mydata = c(50,60,100,75,200)
mydata.big = c(mydata, 50000)
mean(mydata) # 평균 
mean(mydata.big)
median(mydata) # 중앙값 
median(mydata.big)
mean(mydata, trim=0.2) # 절사평균   
mean(mydata.big, trim=0.2)
quantile(mydata) # 사분위수 
quantile(mydata, (0:10)/10)
summary(mydata)
fivenum(mydata) # quantile()과 비슷

## 산포
# 데이터가 퍼져 있는 정도, 흩어져 있는 정도
# 분산과 표준편차를 가지고 표현
diff(range(mydata))    # 최대값-최소값
var(mydata)            # 분산
sd(mydata)             # 표준편차

## Box plot
# 전차 자료의 50%가 위치하는 범위 : Box
# 중앙값 : Box 안 실선
# 정상범위 밖에 존재하는 데이터 표시. 이상치. 특이값(outlier)
# 이상치를 제외한 값중 최소, 최대값
head(state.x77)
st.income <- state.x77[,"Income"] 
boxplot(st.income, ylab="Income value")

# 데이터에 그룹이 있는 경우
boxplot(Petal.Width~Species,data=iris,
        ylab="Petal.Width")

## 히스토그램
# 막대 그래프는 도수 분포표를 만들 수 있는 정수형, 문자형 자료의 경우에 사용하고,
# 실수형 자료에 대해서는 히스토그램을 사용한다.
st.income <- state.x77[,"Income"] 
hist(st.income,                      # data
     main="Histogram for Income",    # 제목
     xlab ="income",    # x축 레이블              
     ylab="frequency",  # y축 레이블                     
     border="blue",     # 막대 테두리색  
     col="green",       # 막대 색
     las=2,             # x축 글씨방향(0~3) 
     breaks=5)          # x축 막대 개수 조절 

## 줄기-잎 그림
score <- c(40,55,90,75,59,60,63,65,69,71)
stem(score, scale=2)

############### 5. 다변량 자료의 탐색 ###############

## 개요
# 다변량 자료
# - 키와 몸무게의 관계와 같이 두 개 이상의 변수를 동시에 다루어야 하는 자료
# - 두 개인 경우를 특히 이변량 자료라고 한다.
# - 일변량 자료는 vector에 저장하여 분석할 수 있고, 다변량 자료는 matrix 또는 data frame에 저장해 분석
# 키, 몸무게 : 변수
# 변수는 데이터셋에서 열로 표현된다.

### 1) 산점도
# 이변량 자료의 분포 및 상관관계를 시각적으로 확인
wt <-mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,                  # 2개 변수(x축,y축)     
     main="Car Weight-mpg",    # 제목
     xlab="Car Weight ",       # x축 레이블
     ylab="Miles Per Gallon ", # y축 레이블
     col="red",                # point 의 color
     pch=19)                   # point 의 종류  

## 옵션
# main='메인제목' : 제목 설정
# sub='서브제목' : 서브제목 설정
# xlab='문자', ylab='문자' : x,y축에 사용할 문자열을 지정
# ann=F : x, y축 제목을 지정하지 않음
# tmag = 2 : 제목 등에 사용되는 문자의 확대률 지정
# axes = F : x, y축을 표시하지 않음
# axis : x, y 축을 사용자의 지정값으로 표시

## 그래프 타입 선택
# type = 'p' : 점 모양(기본값)
# 'i' : 선 모양 그래프(꺾은선 그래프)
# 'b' : 점과 선 모양 그래프
# 'c' : 'b'에서 점을 생략한 모양
# 'o' : 점과 선을 중첩해서 그린 그래프
# 'h' : 각 점에서 x축 까지의 수직선 그래프
# 's' : 왼쪽값을 기초로 계단 모양으로 연결한 그래프
# 'S' : 오른쪽 값을 기초로 계단모양으로 연결한 그래프
# 'n' : 축만 그리고 그래프는 그리지 않음

## 선의 모양 선택
## 색, 기호 등
## 포인트의 종류

# pairs() : 여러 변수들 사이의 상관관계를 한번에 확인
vars <- c("mpg","disp","drat","wt") # 대상 변수 
target <- mtcars[,vars]
pairs(target, # 대상 데이터     
      main="Multi plots")

## 그룹 정보가 있는 2변량 데이터의 분포 보기
iris.2 <- iris[,3:4]              # 데이터
point <- as.numeric(iris$Species) # 포인트 모양
color <- c("red","green","blue")  # 포인트 컬러
plot(iris.2, 
     main="Iris plot",
     pch=c(point),
     col=color[point])

### 2) 상관 분석
# 두 변수 X와 Y간의 선형성의 정도를 측정하는 통계량

## 특징
# -1 <= r <= 1
# r > 0 : 양의 상관 관계
# r < 0 : 음의 상관 관계
# 1이나 -1에 가까울수록 상관성이 높다.

# 음주 정도와 혈중 알코올 농도의 상관도 분석
beers = c(5,2,9,8,3,7,3,5,3,5)
bal = c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,
        0.06,0.02,0.05)
# data.frame : 데이터를 테이블 형태로 관리
# cbind() : 두 벡터를 컬럼(열) 방향으로 합친다. / rbind() : 행 방향
tbl = data.frame(cbind(beers,bal))

# 두 벡터 데이터를 가지고 산점도를 그린다.
# plot(tbl), plot(tbl[,1], tbl[,2])도 동일한 결과 도출
tbl; class(tbl) 
plot(bal~beers,data=tbl)   # 산점도 

# 산점도를 가장 잘 표현할 수 있는 선형 모델을 구한다.
res=lm(bal~beers,data=tbl) # 회귀식 도출

# 구한 선형모델을 가지고 산점도 위에 선을 그린다.
abline(res) # 회귀선그리기

# 두 벡터자료로부터 상관계수를 계산한다.
cor(beers,bal) # 상관성 분석 시행

## 여러 변수들간의 상관 계수를 동시에 구하는 방법
cor(iris[,1:4])


### 3) 선 그래프
# 연도별 인구 증감 추이와 같이 시간 순서에 따른 데이터의 시각화에 많이 사용됨
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)

plot(month,             # x data
     late,              # y data
     main="Late students",
     type= "h",         # 그래프의 종류 선택(알파벳). 
     lty=1,             # 선의 종류(line type) 선택
     lwd=1,             # 선의 굵기 선택
     xlab="Month ",     # x축 레이블
     ylab="Late cnt"    # y축 레이블
)

# type
# 1 - 6 : 선
# b : 점과 선
# s : 계단 형
# S : 계단 형2
# o : 점 위의 선
# h : 값에 해당하는 수직선

## 복수의 선 그래프
month = 1:12
late1  = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2  = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month,             # x data
     late1,              # y data
     main="Late students",
     type= "b",         # 그래프의 종류 선택(알파벳). 
     lty=1,                            # 선의 종류(line type) 선택
     col="red",          # 선의 색깔 선택          
     xlab="Month ",      # x축 레이블
     ylab="Late cnt"     # y축 레이블
)
lines(month,             
      late2, 
      type = "b", 
      col = "blue")

# 하나의 선그래프를 그린 후 그 위에 또 다른 선 그래프를 겹쳐 그리는 방식


############### 6. 데이터 분석 사례 ###############

### 1) 데이터셋 일반정보
## Step 1) 데이터셋 일반 정보
str(iris)

class(iris)               #자료구조 확인
head(iris)
dim(iris)
table(iris$Species)

## 해석
# 자료구조는 data frame
# 앞 4개는 수치 5번째는 그룹 정보 포함
# 총 150개의 행과 5개읠 열로 구성
# 각 행들은 3개의 그룹 중 하나
# 각 그룹에 속한 행의 개수는 각각 50개씩 균등

## Step 2) 4개 열 데이터에 대한 데이터 분포 확인
summary(iris[,1])
summary(iris[,2])
summary(iris[,"Petal.Length"])
summary(iris$Petal.Width)

sd(iris[,1])  # Sepal.Length 
sd(iris[,2])  # Sepal.Width 
sd(iris[,3])  # Petal.Length 
sd(iris[,4])  # Petal.Width 

# Histogram으로 분포 확인
par(mfrow=c(2,2))         # 2x2 윈도우 생성

hist(iris[,1],                  # data
     main=colnames(iris)[1],    # 제목
     xlab ="Length",    # x축 레이블              
     ylab="Count",      # y축 레이블                     
     col="green",       # 막대 색
     las=2,             # x축 글씨방향(0~3) 
     breaks=10)         # x축 막대 개수 조절 

hist(iris[,2],                  # data
     main=colnames(iris)[2],    # 제목
     xlab ="Length",    # x축 레이블              
     ylab="Count",      # y축 레이블                     
     col="yellow",      # 막대 색
     las=2,             # x축 글씨방향(0~3) 
     breaks=10)         # x축 막대 개수 조절 

hist(iris[,3],                  # data
     main=colnames(iris)[3],    # 제목
     xlab ="Length",    # x축 레이블              
     ylab="Count",      # y축 레이블                     
     col="blue",        # 막대 색
     las=2,             # x축 글씨방향(0~3) 
     breaks=10)         # x축 막대 개수 조절 

hist(iris[,4],                  # data
     main=colnames(iris)[4],    # 제목
     xlab ="Length",    # x축 레이블              
     ylab="Count",      # y축 레이블                     
     col="red",         # 막대 색
     las=2,             # x축 글씨방향(0~3) 
     breaks=10)         # x축 막대 개수 조절 

# Step 3) 각 열 데이터에 대해 그룹별 분포를 확인
par(mfrow = c(2, 2))
boxplot(Sepal.Length~Species, data = iris, 
        main = "Sepal.Length")
boxplot(Sepal.Width~Species, data = iris, 
        main = "Sepal.Width")  
boxplot(Petal.Length~Species, data = iris, 
        main = "Petal.Length")  
boxplot(Petal.Length~Species, data = iris, 
        main = "Petal.Width") 

# Step 4) 각 열 데이터에 대해 그룹별 분폴르 산점도를 통해 확인
point <- as.numeric(iris$Species) # 포인트 모양
color <- c("red","green","blue")  # 포인트 컬러
pairs(iris[,-5], 
      pch=c(point),
      col=color[iris[,5]]  
)

# 변수간 상관도를 확인
cor(iris[,-5])

############### 7. R 프로그래밍 ###############

### 1) if 문
# if (logical expression) {
#   statements
# } else {
#   alternative statements
# }
a <- 10
if (a>5){
  print (a)
} else {
  print (a*10)
  print (a/10)
}

a <- 10
b <- 20
if (a>5 & b>5){           # and
  print (a+b)
}
if (a>5 | b>30){          # or
  print (a*b)
}

a <- 10
b <- 20
ifelse (a>b, c<-a, c<-b)
c

### 2) 반복문(for, while)
## for
for(i in 1:10) {
  print(i)
}

for(i in 1:10) {
  cat("2*",i,"=",2*i,"\n") 
}

for(i in 1:10) {
  if(i%%2==0) {          # 짝수인지 확인
    print(i)
  } 
}

v1 <- 101:130
for(i in 1:length(v1)) {
  if(v1[i]%%2==0) {
    print(v1[i]*2)
  } else {
    print(v1[i]+2)
  } 
}

sum <- 0
for(i in 1:100) {
  sum <- sum + i
}
print(sum)

## while
i<-1
while(i <= 10) {
  print(i)
  i <- i+1
}

### 3) 사용자 정의 함수

mymax <- function(x,y) {
  num.max <- x
  if (y > x) {
    num.max <- y
  }
  return(num.max) 
}

mymax(10,15)
mymax(20,15)


mydiv <- function(x,y=2) {
  result <- x/y
  return(result)
}

mydiv(x=10,y=3) 
mydiv(10,3)
mydiv(10)


myfunc <- function(x,y) {
  val.sum <- x+y
  val.mul <- x*y 
  return(list(sum=val.sum, mul=val.mul)) 
}

result <- myfunc(5,8) 
result$sum
result$mul


### 4) apply 계열 함수
# R 프로그램이에서는 for, while을 사용하지 않는 것이 바람직
# apply 계열 함수를 이용하면 다양한 반복문 작성 가능

## apply()
# matrix, data frame에서 행, 열단위의 작업을 쉽게 할 수 있게 한다.
for (i in 1:4) {
  mean(iris[,i])
}

apply(iris[,1:4], 2, mean) # col 방향으로 함수적용
apply(iris[,1:4], 1, mean) # row 방향으로 함수적용

## lapply()
# apply()와 유사하나 결과가 list format이다.
lapply(iris[,1:4], mean) # col 방향으로 함수적용됨

### 5) 프로그래밍 예제
# 화면에서 사용자 입력값 받기
n <- readline(prompt="숫자를 입력하세요: ")
cat("입력한 숫자는", n, "입니다. \n")

## 숫자 맞추기 게임
num <- round(runif(1) * 100, digits = 0)
guess <- -1
cat("Guess a number between 0 and 100.\n")

while(guess != num){ 
  guess <- readline(prompt="Guess number :")
  guess <- as.integer(guess) 
  if (guess == num) {
    cat("Congratulations,", num, "is right.\n")
  } else if (guess < num){
    cat("It’s smaller!\n")
  } else if(guess > num) {
    cat("It’s bigger!\n")
  }
}

############### 8. 데이터 시각화 ###############

### 1) 나무지도
# 나무지도는 데이터가 갖는 계층구조를 타일 모양으로 표현한 것
# 타일은 계층적 속성을 가지며, 계층은 컬러로 표현된다.

# 설치가 필요한 패키지 : treemap
library(treemap)
data(GNI2014)                # 데이터 불러오기 
str(GNI2014)                 # 데이터 내용보기 
treemap(GNI2014,
        index=c("continent","iso3"),
        vSize="population",  # 타일의 크기
        vColor="GNI",        # 타일의 컬러
        type="value",        # 타일 컬러링 방법
        bg.labels="yellow")  # 레이블의 배경색 

# 대륙별 인구, 소득 
# 국가별 국민 총소득을 계산해서 GNI.total 컬럼에 저장
GNI2014$GNI.total <-  
  GNI2014$population*GNI2014$GNI 
head(GNI2014)
# 국가별 국민 총소득을 대륙별로 합계내서 GNI2014.a 에 저장 
GNI2014.a <- aggregate(GNI2014[,4:6],
                       by=list(GNI2014$continent),sum)
# 대륙별 합계를 대륙 인구수로 나누어 GNI.percap 컬럼에 저장
GNI2014.a$GNI.percap <- 
  GNI2014.a$GNI.total/GNI2014.a$population

treemap(GNI2014.a,
        index=c("Group.1"),
        vSize="population",
        vColor="GNI.percap",
        type="value",
        bg.labels="yellow")

### 2) 버블차트
# 산점도는 두 개의 변수간 상관 관계를 표시
# 버블 차트는 산점도에 제 3의 변수를 크기에 비례하는 원으로 표현한 그림

# 설치가 필요한 패키지 : MASS
library(MASS)
head(UScrime)
radius <- sqrt(UScrime$Pop) # 원의 반지름(값이커서 줄임)
symbols(UScrime$U2, UScrime$y, # 원의 x,y 좌표값 
        circles=radius,         # 원의 반지름값 
        inches=0.4,             # 원의 크기 조절값
        fg="white",             # 원의 테두리 색 
        bg="lightgray",         # 원의 바탕색
        lwd=1.5,                # 원의 테두리선 두께
        xlab="unemployment 35-39 males", 
        ylab="crime rate",
        main="UScrime Data")
text(UScrime$U2, UScrime$y,  # 텍스트가 출력될 x,y좌표
     1:nrow(UScrime),         # 출력할 텍스트
     cex=0.8,                 # 폰트 크기
     col="brown")             # 폰트 color


### 3) 다중상자그림
# 상자 그림은 일변량 연속형 자료를 상자와 선, 그리고 점으로 표현한 그림
# 다중 상자 그림은 총 자료가 여러 개의 자료 묶음 또는 그룹으로 구성되어 있는 경우 그룹 간 비교에 있어 시각적 효과가 탁월

setwd("C:/Users/user/Desktop/Rworks") # 읽어 올 데이터 파일이 있는 폴더지정
ds <- read.csv("seoul_temp_2017.csv")
head(ds)
summary(ds$avg_temp)

# 서울 1년 기온 분포 
boxplot(ds$avg_temp, 
        col="yellow", 
        ylim=c(-20,40), 
        xlab="서울1년기온",
        ylab="기온")


# 월별 평균기온계산 
month.avg <- aggregate(ds$avg_temp, 
                       by=list(ds$month),median)[2]

# 평균기온 순위 계산 (내림차순) 
odr <- rank(-month.avg)

# 월별 기온분포 
boxplot(avg_temp~month, data=ds,  
        col=heat.colors(12)[odr], # 상자의 색을 지정 
        ylim=c(-20,40), 
        ylab="기온",
        xlab="월",
        main="서울 월별기온분포 (2017)")


### 4) 모자이크 플롯
# 모자이크 플롯은 2원 3원 교차표의 시각화이다.
# 전체 정사각 도형을 교차표의 행 빈도에 비례하는 직사각도형으로 나누고 다시 각 도형을 행 내 열의 빈도에 해당하는 직사각도형으로 나눈다.
# matrix 형태로 데이터가 존재하는 경우
hospital <- read.csv("C:/Users/user/Desktop/Rworks/hospital.csv")    
head(hospital)
table(hospital)
mosaicplot(~freq+stay, data = hospital, color=TRUE, 
           main ="병원내원빈도vs치료기간")

mosaicplot (~freq+stay, data = hospital, 
            color =  c("green","blue","red"),
            main ="병원내원빈도vs치료기간")

# 3차원 교차표 형태로 데이터가 존재하는 경우
Titanic
mosaicplot(Titanic, color = TRUE, off=5)

mosaicplot(Titanic, 
           main = "Survival on the Titanic", 
           color = c("red","green"), 
           off=1) # 블럭들 사이의 간격 지정 

############### 9. 회귀 분석 ###############

### 1) 단순 선형 회귀
## 정의
# 종속 변수(y)와 독립변수(x) 사이의 선형 관계를 파악하고 이를 예측에 활용하는 방법
# 예) 기온(x) 과 아이스크림  판매량(y) 사이의 관계식을 찾아낸다. 
# 이를 이용하여 내일의 예상 기온으로부터 예상 아이스크림 판매량을 예측한다.
# => 필요한 아이스크림 재료의 양을 예측할 수 있다. 

# 기온(x)과 아이스크림 판매량(y) 사이의 관계식을 모델(model) 이라고 한다. 
# (회귀 모델, 예측 모델)

# 단순 선형 회귀식은 다음과 같은 형태
# Y = Wx + b

# 두변수가 선형 관계에 있는지 알아보는 방법 : 산점도, 상관계수

## R을 이용해 회귀 모델 구하기
head(cars)
plot(dist~speed, data=cars)

model <- lm(dist~speed, cars)
model

coef(model)[1] # b
coef(model)[2] # W

# 완성된 모델 : dist = 3.932 x speed – 17.579

speed <- cars[,1]
pred <- 3.932 * speed - 17.579
pred
compare <- cbind(pred,cars[,2],abs(pred-cars[,2]))
compare

# 회귀식을 산점도에 표현
plot(dist~speed, data=cars)
abline(coef(model))


### 2) 중선형 회귀
## 정의 
# Multiple linear regression
# 독립변수가 2개 이상인 경우
# 예) 키(x1) 와 몸무게(x2)를 가지고 혈당수치(y)를 를 예측
# 독립변수 : 키, 몸무게
# 종속 변수 : 혈당수치 

# 중선형 회귀식의 형태
# y = b0 + b1x1 + b2x2 + ... + bkxk + e

## 사례 : 연봉 예측 모델
library(car)
head(Prestige)

newdata <- Prestige[,c(1:4)]
plot(newdata, pch=16, col="blue", 
     main="Matrix Scatterplot")

mod1 <- lm(income ~ education + prestige + 
             women, data=newdata)
summary(mod1)

## 회귀식
# income = -253.850 + 177.199 x education
# + 141.435 x prestige 
# - 50.896 x women 

## 변수 선택
# 독립변수들이 많을 때 그 중에서 종속변수를 잘 ㄹ설명할 수 있는 변수들만 선택
library(MASS)
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod2 <- lm(income ~ education + prestige + 
             women + census, data= newdata2)
step <- stepAIC(mod2, direction="both")

## 선택된 변수로 모델을 다시 생성
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod3 <- lm(income ~ prestige + women, 
           data= newdata2)
summary(mod3)

### 3) 로지스틱 회귀
# 일반적인 회귀 문제는 종속변수가 수치데이터
# 예측해야 할 종속변수가 수치데이터가 아닌 범주형일때 로지스틱 회귀라고 한다.
# 범주나 그룹을 예측하는 문제를 '분류'문제 라고 한다.

head(iris)
# 종속변수가 숫자형 이어야 함. 범주형 변수를 숫자로 변환
mod3 <- glm(as.integer(Species) ~., data= iris)
summary(mod3)

pred <- 1.18650 + 5.1*(-0.11191)+
  3.5*(-0.04008)+
  1.4*0.22865+
  0.2*0.60925  
pred

unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unknown) <- names(iris)[1:4]
unknown
mod3

pred <- predict(mod3, unknown) 
pred

test <- iris[,1:4]
pred <- predict(mod3, test) 
pred
pred <- round(pred,0) # find nearest integer
pred

pred == as.integer(iris[,5]) 
acc <- mean(pred == as.integer(iris[,5]))
acc

class(iris$Species)
iris$Species
as.integer(iris$Species)