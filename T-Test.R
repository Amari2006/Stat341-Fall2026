#Amari Way, 9/22/2026, To Perform the T-Test

#Create variables x and y with some dummy dataset 
x = rnorm(10)
y = rnorm(10)

#Make a normal distribution plot/curve for reference
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

#Add x and y points on existing plot window
lines(density(x), col='green')
lines(density(y), col='blue')

#Add another curve, color yellow with 100 points between 2 and 4
pts = seq(2,4,length=100)
lines(density(pts),col='yellow')

#Apply the T-test function to check the differnces between variables x and y
ttest = t.test(x,y)
ttest
 Welch Two Sample t-test

data:  x and y
t = 1.7262, df = 17.382, p-value = 0.102
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.149360  1.506236
sample estimates:
 mean of x  mean of y 
 0.3128803 -0.3655575 




#Conclusion: x and y are not significantly differnt variables/groups