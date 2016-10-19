
N=12
x=c(76230,73550,80750,71500,75420,74840,71580,76920,68450,76990,64070,76200)


scr = "ex.stan"
data =list(N=N, x=x)

par = c("mu", "mu_over", "mu_over2")

war = 1000
ite = 11000
see = 1234
dig = 3
cha = 1

fit = stan(file=scr, data= data, iter=ite, seed=see, warmup=war, pars=par, chains=cha)
print(fit,pars=par,digits_summary = dig)
plot(fit)
traceplot(fit,inc_warmup=F)
