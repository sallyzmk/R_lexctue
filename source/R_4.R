## 오후 강의
# 데이터 내보내기 & 불러오기
# 경로
getwd()
setwd()
?write.csv
write.csv(x = exam, file = "temp.csv")

# 바탕화면에 dataset 폴더 생성, exam 객체 저장하세요
# 데이터 불러오기
temp = read.csv("temp.csv")
temp = read.csv("dataset/temp.csv")
write.csv(x = exam, file = "exam.csv") #데이터프레임을 cvs파일로 저장

# 51p
# R에서 예제파일 exam.csv를 객체 exam으로 입력해서 설명함.
exam = read.csv("exam.csv") #csv파일을 데이터프레임으로 읽기
getwd()
?read.csv() # 입력

# install.packages("ggplot2")

library(ggplot2)
economics <- ggplot2::economics

# 여기서 잠깐 (66p)
# 실무 패키지 (분량이 많은 데이터를 불러올 때는 read.csv()보다 fread() 함수를 이용하는게 더 좋다.)

install.packages("data.table")
library(data.table)  # 공식문서 확인

# 엑셀파일 불러오기
install.packages("readxl")
library(readxl)
read_excel("student1_xl.xlsx")

# 67p (3) 설명
read.csv("student1.csv")
read.csv("student1.csv", skip = 1)

# 68p (4) 설명_엑셀 파일에 있는 복수의 시트에서 특정시트 불러오기
read_excel("student1_xl.xlsx") # 첫번째 시트 불러오기
read_excel("student1_xl.xlsx", sheet =2) # 두번째 시트 불러오기

# 69p 2)txt 파일 불러오기

# 73p 3)SPSS 파일 불러오기
install.packages("foreign")
library(foreign)
?read.spss()  #.sav 파일 읽어주는 함수
student <- read.spss("student.sav")
as.data.frame(student) #형변환 (리스트를 데이터프레임으로 변경)



