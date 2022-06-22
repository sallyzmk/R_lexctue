# 데이터 불러오기
# 경로 설정이 매우 중요
#
getwd()
# setwd("c:/")
# csv 파일 / 엑셀 파일

# 5장은 스스로 정리
# 91p mpg1.csv 파일 불러오기
getwd()
mpg1 <- read.csv("mpg1.csv") # “” 잊지 말 것!!!
# mpg1 <- read.csv("mpg1.csv", stringsAsFactors =F) # 문자형을 펙터로 X
#함수에 다양한 옵션이 있음. 알아만 두기. F를 T로 변경하면 문자형을 펙터로 O
str(mpg1)  

# 기본 통계 함수
sum(mtcars$mpg)  # 합
range(mtcars$mpg)  # 범위
max(mtcars$mpg)  # 최댓값
min(mtcars$mpg)  # 최솟값
quantile(mtcars$mpg)  # 사분위수
IQR(mtcars$mpg)  # 1~3분위 범위

# 평균
mean(mtcars$mpg) # 평균
var(mtcars$mpg) # 분산
sd(mtcars$mpg) # 표준편차(편차를 제곱_정수로 만들기 위해,그리고 다시 루트)
# 표준편차는 여러개를 비교해 볼 때 의미가 있다
# descriptive Statistics : 통계를 묘시히다.

# 수리통계 -> 수학적으로 증명
# 그러나 일반인은 수학적 증명 할 필요 없음 -> 함수활용, 의미만 알아두기
sd(mtcars$mpg) 


# 사분위수 : 전체 수를 4등분한 수 ex. 분위
# 사분위수를 기준점으로 잡는다. 분포를 보기 위해. 평균값은 특출난 1인으로 인해 외곡될 수 있음. 그럼 그 특이 케이스인 1인을 무슨 기준으로 데이터에서 뺄 것이냐를 사분위로 결정.
# IQR : 1사분위수와 3사분위수 사이의 거리
# 통계분석 / 머닝머신 -> 이상치 제거 할 때 활용
quantile(mtcars$mpg)

# 통계 요약 구하기 90p
summary(iris)

# 중간값 : 100명, 50번째 키순에 해당하는 값
# 평균 : 전체 키의 합 / 전체 수

summary(iris$Sepal.Length)

# 빈도 분석 91p
# 범주별 빈도 -> 문자
str(mpg1)

#
table(mpg1$trans)
table(mpg1$manufacturer)

table(mpg1$trans, mpg1$manufacturer)


# 빈도의 비율 구하기 92p
a <- table(mpg1$trans)
prop.table(a)

b <- table(mpg1$trans,mpg1$manufacturer)
prop.table(b)

prop.table(table(mpg1$manufacturer))


# 행과 열의 비율 형식을 맞추기 93p
?prop.table
prop.table(b, margin = 1)  # 합이 1
prop.table(b, margin = 2)  # 합이 2
############# 사진첨부하기!!!!!!!

# 소숫점 아래 자리수 지정 94p
round(0.32523142,4)  # 몇 자리 수까지 맞춰라
round(prop.table(table(mpg1$trans)),2)


# 시각화 이미지
# ggplot2 패키지 활용
# 테이블 만들기
# gt 패키지 활용 -> 고급과정, 대중적이지 않음

