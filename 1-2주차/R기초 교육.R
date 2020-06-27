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



















