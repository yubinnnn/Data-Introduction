#코드 3-1
z <- matrix(1:20, nrow=4, ncol=5)
z

#코드 3-2
z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
z2

#코드 3-3
x <- 1:4
y <- 5:8
z <- matrix(1:20,nrow=4,ncol=5)
m1 <- cbind(x,y)
m2 <- rbind(x,y)
m3 <- rbind(m2,x)
m4 <- cbind(z,x)
m1
m2
m3
m4

#코드 3-4
z[2,3]
z[1,4]
z[2,]
z[,4]

#코드 3-5
z[2,1:3]
z[1,c(1,2,4)]
z[1:2,]
z[,c(1,4)]

#코드 3-6
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow=4,ncol=3)
score
rownames(score) <- c("J","T","M","JA")
colnames(score) <- c("E","M","S")
score

#코드 3-7
score["T","M"]
rownames(score)

#데이터 프레임 생성
name = c("철수","춘향","길동")
age = c(22,20,25)
gender = factor(c("M","F","M"))
blood.type = factor(c("A","O","B"))

patients = data.frame(name,age,gender,blood.type)
patients

#데이터 프레임 요소에 접근
patients$name
patients[1,]
patients[patients$name=="철수",]
patients[patients$name=="철수",c("name","age")]

#attach, detach 함수: 데이터 프레임의 속성명을 변수명으로 변경
head(cars)
attach(cars)
speed
detach(cars)
speed

#with 함수
mean(cars$speed)
max(cars$speed)
with(cars,mean(speed))
with(cars,max(speed))

#subset 함수: 데이터 프레임에서 일부 데이터만 추출
subset(cars, speed>20)
subset(cars, speed>20, select = c(dist))
subset(cars, speed>20, select = -c(dist))

#na.omit함수: 데이터 프레임의 결측값 제거
head(airquality)
head(na.omit(airquality))

#merge 함수: 여러 데이터 프레임 병합
patients1 = data.frame(name,age,gender)
patients1
patients2 = data.frame(name,blood.type)
patients = merge(patients1,patients2)
patients

#리스트 생성
patients = data.frame(name = c("철수","춘향","길동"),age = c(22,20,25),gender = factor(c("M","F","M")),blood.type = factor(c("A","O","B")))
no.patients = data.frame(day = c(1:6),no=c(50,60,55,52,65,58))

#데이터를 단순 추가
listpatients = list(patients,no.patients)
listpatients

listpatients = list(patients=patients,no.patients=no.patients)
listpatients

#리스트 요소에 접근
listpatients$patients
listpatients[[1]]
listpatients[["patients"]]
listpatients[["no.patients"]]

#lapply, sapply 함수
lapply(listpatients$no.patients, mean)
lapply(listpatients$patients, mean)
sapply(listpatients$no.patients, mean)
sapply(listpatients$no.patients, mean, simplify = F)

#코드 2-22
bt <- c("A","B","B","O","AB","A")
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new) #팩터에 저장된 값의 종류를 출
as.integer(bt.new) #팩터의 문자값을 숫자로 바꾸어 출
bt.new[7] <- "B"
bt.new[8] <- "C"
bt.new