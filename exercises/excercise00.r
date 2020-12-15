#Exercise 1: Expected value
#Scores of programming course and probability course
set.seed(123456)
n<-5000
X<-rnorm(n,mean=6.5, sd=1.6)
Y<-rnorm(n,mean=5.5, sd=1.8)

#Assume that X,Y are independent variables and show E(XY)=E(X)*E(Y)
E.X<-mean(X)
E.Y<-mean(Y)
E.XY<-mean(X*Y)

print(paste(E.XY,"=", E.X*E.Y))

plot(X,Y)
#Given a=0.8 and b=0.2
#Determine the expected value of E(aX+bY)
a <- 0.8
b <-  0.2
# (1) E(aX+bY) = (2) E(aX)+E(bY) = (3) aE(X)+bE(Y)
aX <- a*X 
bY<- b*Y

# (1)
E.aXbY <- mean(aX+bY)   

E.aX <- mean(aX) 
E.bY <- mean(bY)

E.a_X <- a*mean(X) 
E.b_Y <- b*mean(Y)

#  (2)
E.aX_bY <- E.aX + E.bY
# (3)
E.a_Xb_Y <- E.a_X + E.b_Y 
#  print result
print(paste(E.aXbY,"=",E.aX_bY,"=",E.a_Xb_Y))





