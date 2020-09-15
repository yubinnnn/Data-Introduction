a <- 125
a
print(a)

log(10)+5
sqrt(25)
max(5,3,2)

x = c(2,4,6,8,10)
length(x)

x[c(1,2,3)]

#코드 2-17
d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(d,decreasing = TRUE)

#코드 2-20
d <- c(1,2,3,4,5,6,7,8,9)
d >= 5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5
condi <- d>5 & d<8
d[condi]

#all, any 함수
x = 1:10
x>5
all(x>5)
any(x>5)

#head, tail 함수
head(x)
tail(x)
head(x,3)
tail(x,3)

#union, intersect, setdiff, setequal 함수
x = c(1,2,3)
y = c(3,4,5)
z = c(3,1,2)

union(x,y) #합집합
intersect(x,y) #교집합
setdiff(x,y) #차집합
setequal(x,y) #동일한 요소가 있는지 비교

#array 함수
x = array(1:5,c(2,4))
x
x[1,]
x[,2]

#matrix함수
x = 1:12
x
matrix(x,nrow=3)
matrix(x,nrow=3,byrow=T)

#cbind, rbind 함수
v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)

cbind(v1,v2,v3)

#배열 연산 예제
x = array(1:4, dim = c(2,2))
y = array(5:8, dim = c(2,2))
x
y
x+y
x-y
x*y
x%%y
t(x)
solve(x) #x의 역행렬
det(x) #x의 행렬식

#apply, dim, sample 함수
x = array(1:12, c(3,4))
apply(x,1,mean)
dim(x)
sample(x)
sample(10)
