# 5장은 스스로 정리
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

