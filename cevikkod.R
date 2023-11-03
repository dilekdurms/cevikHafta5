x<-matrix(1:4,2,2)
y<-matrix(rep(10,4),2,2)
x*y
x/y
x%*%y 
x<-Sys.time();x
class(x)
p<-as.POSIXlt(x)
names(unclass(p))
p$wday
unclass(x)
help.unclass()
help.start(unclass(x))
help("unclass()")
??unclass()
dtstring<-c("January 10, 2012 10:40","December 9,2011 9:10")
x<-strptime(dtstring,"%B %d,%Y %H:%M")
class(x)
d1<-as.Date("2012-03-01")
d2<-as.Date("2012-02-28")
(td<-d1-d2)
class(td)
x<-as.POSIXct("2012-10-25 01:00:00")
y<-as.POSIXct("2012-10-25 06:00:00",tz="GMT")
y-x
x<-list(a=1:5,b=rnorm(10))
x
plot(rnorm(1000))
rnorm
x<-list(a=1:5,b=rnorm(10))
lapply(x,mean)
sapply(x,mean)
x<-list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
x
lapply(x,function(elt){elt[,1]})
sapply(x,function(elt){elt[,1]})

library(datasets)
head(airquality)
s<-split(airquality, airquality$Month)
str(s)
class(s)
sapply(s,function(x){
           colMeans(x[,c("Ozone","Solar.R","Wind")])
})
?colMeans  
sapply(s,function(x){
  colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = TRUE)
})

x<-rnorm(9)
lev<-gl(3,3,labels = c("Ocak","Şubat","Mart"))
grps<-split(x,lev)
grps
sapply(grps, function(x) sum(abs(x)))
class(grps)
class(sapply(grps, function(x) sum(abs(x)))
a<-jsonlite::fromJSON("https://raw.githubusercontent.com/CevikYazilimGelistirme-2324/Exercises/main/Week3/example_2.json")
a
sapply(a$quiz$maths, function(j)j$options[1])

ls()
rm(b)
ls()
v1<-c(2,3,6) 
v2<-c("e","b","t")
c(v1,v2)
seq(from=1,to=10,by=2)
