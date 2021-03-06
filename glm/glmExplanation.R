# Plots for explaining GLM
library('RColorBrewer')
library('tikzDevice')

plot(1:10,1:10, col='white')
text(runif(1,0,10),runif(1,0,10),expression(paste(frac(1,paste(sigma, sqrt(paste(2, pi)))),~e^-~frac((x~-~mu)^2,paste(2, sigma^2)))), cex=1.3)




r <- brewer.pal( 8, 'Set1')[1]
b <- brewer.pal( 8, 'Set1')[2]
g <- brewer.pal( 8, 'Set1')[3]
p <- brewer.pal( 8, 'Set1')[4]
o <- brewer.pal( 8, 'Set1')[5]

br <- brewer.pal( 8, 'Set1')[7]
arrowWidth=8

tikz("~/Dropbox/Documents/statsforbios/glm/normalPDF.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))



par(mar=c(3,4,0,0)+0.3, cex=1.8)
plot(dnorm(seq(-3,5,length.out=1000,), 0, 1 )~ seq(-3,5,length.out=1000,), type='l', col = r, lwd=11, ylab='Density', xlab='',xaxs='i', yaxs='i', ylim=c(0,0.45), xlim=c(-3,6.2))
text(3.6, 0.3, '$\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}$', cex=1.8)



dev.off()





tikz("~/Dropbox/Documents/statsforbios/glm/normalPDF2.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))



par(mar=c(3,4,0,0)+0.3, cex=1.8)
plot(dnorm(seq(-3,5,length.out=1000,), 0, 1 )~ seq(-3,5,length.out=1000,), type='l', col = r, lwd=11, ylab='Density', xlab='',xaxs='i', yaxs='i', ylim=c(0,0.45), xlim=c(-3,6.2))
text(3.6, 0.3, '$\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}$', cex=1.8)
points(-1,0.004, cex=2, col=b, pch=16)
arrows(-1,0.004, -1, dnorm(-1), col=b, lwd=arrowWidth)
arrows(-1, dnorm(-1), -2.9, dnorm(-1), col=b, lwd=arrowWidth)


dev.off()




tikz("~/Dropbox/Documents/statsforbios/glm/likelihoodNorm.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))



par(mar=c(4,4,0,0)+0.3, cex=1.8)
plot(dnorm(seq(-3,5,length.out=1000,), -1, 1 )~ seq(-3,5,length.out=1000,), type='l', col = g, lwd=11, ylab='Likelihood', xlab='\\textmu',xaxs='i', yaxs='i', ylim=c(0,0.45), xlim=c(-3,6.2))
text(3, 0.38, '$\\mathcal{L}=\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}$', cex=1.6)
points(-1,0.004, cex=2, col=b, pch=16)
arrows(-1,0.004, -1, dnorm(-1), col=b, lwd=arrowWidth)
#arrows(-1, dnorm(-1), -2.9, dnorm(-1), col=b, lwd=arrowWidth)


dev.off()





tikz("~/Dropbox/Documents/statsforbios/glm/normalPDF3.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))



par(mar=c(4,4,0,0)+0.3, cex=1.8)
plot(dnorm(seq(-3,5,length.out=1000,), 0, 1 )~ seq(-3,5,length.out=1000,), type='l', col = r, lwd=11, ylab='Density', xlab='x',xaxs='i', yaxs='i', ylim=c(0,0.45), xlim=c(-3,6.2))
text(3.6, 0.4, '$\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{({\\color[HTML]{377EB8}x_1}-\\mu)^2}{2\\sigma^2}}$', cex=1.5)
text(3.4, 0.33, '$\\times\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{({\\color[HTML]{A65628}x_2}-\\mu)^2}{2\\sigma^2}}$', cex=1.5)
points(-1,0.004, cex=2, col=b, pch=16)
arrows(-1,0.004, -1, dnorm(-1), col=b, lwd=arrowWidth)
arrows(-1, dnorm(-1), -2.9, dnorm(-1), col=b, lwd=arrowWidth)
points(-0.3,0.004, cex=2, col=br, pch=16)
arrows(-0.3,0.004, -0.3, dnorm(-0.3), col=br, lwd=arrowWidth)
arrows(-0.3, dnorm(-0.3), -2.9, dnorm(-0.3), col=br, lwd=arrowWidth)
text(-1.6,0.02, '$x_1$', cex=1.5, col=b)
text(0.3,0.02, '$x_2$', cex=1.5, col=br)

dev.off()











tikz("~/Dropbox/Documents/statsforbios/glm/lmOverview.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( 1:5, 1:5, col='white', xlab = '$x$', ylab='$y$', xlim=c(0,5), ylim=c(0,5),xaxs='i', yaxs='i' )

abline(2, 0.3, col=p, lwd=5)
text(0.14,1.85, '$c$', col = o, cex=1.4)
points(0,2, pch=16, cex=1.6, col=o)
text(3,1.2, '$y = {\\color[HTML]{984EA3}\\beta} x + {\\color[HTML]{FF7F00}c} + {\\color[HTML]{E41A1C}\\epsilon}$', cex=1.8 )
text(3,0.6, '${\\color[HTML]{E41A1C}\\epsilon} \\sim \\mathcal{N}(0, \\sigma^2)$', cex=1.8 )

x <- 4
y <- seq(2.4, 4, length.out=100)
e <- dnorm(y, 0.3*4+2,  0.2)/3
xe <- x + e

lines(y~rep(x, 100), col=r, lty=5)
lines(y~xe, lwd = 3, col=r)


x2 <- 2.5
y2 <- seq(1.95, 3.55, length.out=100)
e2 <- dnorm(y2, 0.3*2.5+2,  0.2)/3
xe2 <- x2 + e2

lines(y2~rep(x2, 100), col=r, lty=5)
lines(y2~xe2, lwd = 3, col=r)

dev.off()







tikz("~/Dropbox/Documents/statsforbios/glm/lmProb.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( 1:5, 1:5, col='white', xlab = '$x$', ylab='$y$', xlim=c(0,5), ylim=c(0,5),xaxs='i', yaxs='i' )

abline(2, 0.3, col=p, lwd=7)



x2 <- 2.5
y2 <- seq(1.95, 3.55, length.out=100)
e2 <- dnorm(y2, 0.3*x2+2,  0.2)/3
xe2 <- x2 + e2

lines(y2~rep(x2, 100), col=r, lty=5)
lines(y2~xe2, lwd = 5, col=r)

yData <- 2.5

points(x2, yData, col=b, pch=16, cex=1)
arrows(x2, 0.3*x2+2, x2, yData+0.04, col=b, lwd=3, length=0.1)
arrows(x2, yData, x2+dnorm(yData, 0.3*x2+2, 0.2)/3 , col=b, lwd=3, length=0.1)

text(x2-0.4, yData-0.2, '${\\color[HTML]{377EB8}(x,y)}$')

dev.off()






tikz("~/Dropbox/Documents/statsforbios/glm/lmProbEqn.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( 1:5, 1:5, col='white', xlab = '$x$', ylab='$y$', xlim=c(0,5), ylim=c(0,5),xaxs='i', yaxs='i' )

abline(2, 0.3, col=p, lwd=7)



x2 <- 2.5
y2 <- seq(1.95, 3.55, length.out=100)
e2 <- dnorm(y2, 0.3*x2+2,  0.2)/3
xe2 <- x2 + e2

lines(y2~rep(x2, 100), col=r, lty=5)
lines(y2~xe2, lwd = 5, col=r)

yData <- 2.5

points(x2, yData, col=b, pch=16, cex=1)
arrows(x2, 0.3*x2+2, x2, yData+0.04, col=b, lwd=3, length=0.1)
arrows(x2, yData, x2+dnorm(yData, 0.3*x2+2, 0.2)/3 , col=b, lwd=3, length=0.1)

text(x2-0.4, yData-0.2, '${\\color[HTML]{377EB8}(x,y)}$')


text(2.6, 1.1, '$p({\\color[HTML]{377EB8}x} ,{\\color[HTML]{377EB8}y} )=\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{({\\color[HTML]{377EB8}y} - {\\color[HTML]{377EB8}x}{\\color[HTML]{984EA3}\\beta})^2}{2\\sigma^2}}$', cex=1.5)

dev.off()






tikz("~/Dropbox/Documents/statsforbios/glm/lmLikelihood.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( 1:5, 1:5, col='white', xlab = '$x$', ylab='$y$', xlim=c(0,5), ylim=c(0,5),xaxs='i', yaxs='i' )

abline(2, 0.3, col=p, lwd=7)



x2 <- 2.5
y2 <- seq(1.95, 3.55, length.out=100)
e2 <- dnorm(y2, 0.3*x2+2,  0.2)/3
xe2 <- x2 + e2

lines(y2~rep(x2, 100), col=r, lty=5)
lines(y2~xe2, lwd = 5, col=r)

yData <- 2.5

points(x2, yData, col=b, pch=16, cex=1)
arrows(x2, 0.3*x2+2, x2, yData+0.04, col=b, lwd=3, length=0.1)
arrows(x2, yData, x2+dnorm(yData, 0.3*x2+2, 0.2)/3 , col=b, lwd=3, length=0.1)

text(x2-0.4, yData-0.2, '${\\color[HTML]{377EB8}(x,y)}$')


text(2.6, 1.1, '$ \\mathcal{L}({\\color[HTML]{984EA3}\\beta})=\\frac{1}{\\sigma \\sqrt{2\\pi}} e^{-\\frac{({\\color[HTML]{377EB8}y} - {\\color[HTML]{377EB8}x}{\\color[HTML]{984EA3}\\beta})^2}{2\\sigma^2}}$', cex=1.5)

dev.off()





tikz("~/Dropbox/Documents/statsforbios/glm/poisOverview.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( seq(1,5, length.out=10), seq(1,40, length.out=10), col='white', xlab = '$x$', ylab='$y$', xlim=c(0,10), ylim=c(0,38),xaxs='i', yaxs='i' )

abline(3, 1, col=p, lwd=8)
text(5,30, '$y = {\\color[HTML]{984EA3}\\beta} x + {\\color[HTML]{FF7F00}c} + {\\color[HTML]{E41A1C}\\epsilon}$', cex=1.8 )
text(5,26, '${\\color[HTML]{E41A1C}\\epsilon} \\sim \\mathrm{Pois}(\\lambda)$', cex=1.8 )

x <- 4
y <- 0:18
e <- dpois(y, 4+3)*3
xe <- x + e

lines(y~rep(x, length(y)), col=r, lty=5)
lines(y~xe, lwd = 6, col=r)


x2 <- 8
y2 <- 0:24
e2 <- dpois(y2, 8+3)*3
xe2 <- x2 + e2

lines(y2~rep(x2, length(y2)), col=r, lty=5)
lines(y2~xe2, lwd = 6, col=r)


x3 <- 0.2
y3 <- 0:12
e3 <- dpois(y3, 0.2+3)*3
xe3 <- x3 + e3

lines(y3~rep(x3, length(y3)), col=r, lty=5)
lines(y3~xe3, lwd = 6, col=r)


dev.off()





tikz("~/Dropbox/Documents/statsforbios/glm/poisProb.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( seq(1,5, length.out=10), seq(1,40, length.out=10), col='white', xlab = '$x$', ylab='$y$', xlim=c(0,10), ylim=c(0,38),xaxs='i', yaxs='i' )

abline(3, 1, col=p, lwd=8)


text(3.2,3, '${\\color[HTML]{377EB8}(x,y)}$')


text(5, 28, '$p({\\color[HTML]{377EB8}x} ,{\\color[HTML]{377EB8}y} )=\\frac{{\\color[HTML]{984EA3}\\beta} {\\color[HTML]{377EB8}x}^{\\color[HTML]{377EB8}y}e^{-{\\color[HTML]{984EA3}\\beta} {\\color[HTML]{377EB8}x}}}{{\\color[HTML]{377EB8}y}!}$', cex=1.5)


x <- 4
y <- 0:18
e <- dpois(y, 4+3)*6
xe <- x + e

lines(y~rep(x, length(y)), col=r, lty=5)
lines(y~xe, lwd = 6, col=r)


points(4,4, cex=1.4, col=b, pch=16)
arrows(4,0, 4, 4, col=b, lwd=arrowWidth*0.8, length=0.1)
arrows(4, 4, 4+dpois(4, 4+3)*6, 4, col=b, lwd=arrowWidth*0.8, length=0.1)

dev.off()




tikz("~/Dropbox/Documents/statsforbios/glm/poisLike.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( seq(1,5, length.out=10), seq(1,40, length.out=10), col='white', xlab = '$x$', ylab='$y$', xlim=c(0,10), ylim=c(0,38),xaxs='i', yaxs='i' )

abline(3, 1, col=p, lwd=8)


text(3.2,3, '${\\color[HTML]{377EB8}(x,y)}$')


text(5, 28, '$\\mathcal{L}({\\color[HTML]{984EA3}\\beta} )=\\prod^n_i\\frac{{\\color[HTML]{984EA3}\\beta} {\\color[HTML]{377EB8}x_i}^{\\color[HTML]{377EB8}y_i}e^{-{\\color[HTML]{984EA3}\\beta} {\\color[HTML]{377EB8}x_i}}}{{\\color[HTML]{377EB8}y_i}!}$', cex=1.5)


x <- 4
y <- 0:18
e <- dpois(y, 4+3)*6
xe <- x + e

lines(y~rep(x, length(y)), col=r, lty=5)
lines(y~xe, lwd = 6, col=r)


points(4,4, cex=1.4, col=b, pch=16)
arrows(4,0, 4, 4, col=b, lwd=arrowWidth*0.8, length=0.1)
arrows(4, 4, 4+dpois(4, 4+3)*6, 4, col=b, lwd=arrowWidth*0.8, length=0.1)


dev.off()








tikz("~/Dropbox/Documents/statsforbios/glm/poisDist.tex", width = 6, height = 6, 
standAlone = TRUE,
packages = c("\\usepackage{tikz}",
"\\usepackage[active,tightpage,psfixbb]{preview}",
"\\PreviewEnvironment{pgfpicture}",
"\\setlength\\PreviewBorder{0pt}",
"\\usepackage{amssymb}",
"\\usepackage[scaled]{helvet}",
"\\renewcommand*\\familydefault{\\sfdefault}", 
"\\usepackage[T1]{fontenc}",
"\\usepackage{textgreek}"))


par(mar=c(4,4,0,0)+0.3, cex=1.8)

plot( 0:50, dpois(0:50,4.3) , col=r, xlab = '$x$', ylab='probability', xlim=c(0,20), ylim=c(0,0.28),xaxs='i', yaxs='i', type='l', lwd=8  )

text(13, 0.24, '$p(x)=\\frac{\\lambda^ye^{-\\lambda}}{y!}$', cex=1.5)

dev.off()








# poisson fitting 

x <- runif(50, 1,10)
y <- rnorm(50, 10)*x


plot(x,y,xlab="Body size",ylab="Probability of survival") # plot with body size on x-axis and survival (0 or 1) on y-axis
g=glm(y~x,family=poisson(link=identity)) # run a logistic regression model (in this case, generalized linear model with logit link). see ?glm

curve(predict(g,data.frame(x=x),type="resp"),add=TRUE)



