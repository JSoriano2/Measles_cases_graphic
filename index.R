df <- read.csv("casos_sarampion.csv", stringsAsFactors=TRUE)
dat <- df[c(3, 10, 28), ]
dat <- dat[ ,c( 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)]
dat <- data.frame(t(dat))
names(dat)[1] <- "Bulgaria"
names(dat)[2] <- "France"
names(dat)[3] <- "Spain"
meses <- row.names(dat)
mf <- factor(meses,levels=c("Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec","Jan", "Feb", "Mar"))
plot(dat$Bulgaria ~ mf,xaxt="n",ylim=c(1,700), type="o", col="green", lwd=5, main="Casos Sarampion (Abril 2019 - Marzo 2020)", xlab="Mes", ylab= 'Numero de casos', cex.lab=1.2)
lines(dat$Spain  ~ mf,type="o", col="red", lwd=5 )
lines(dat$France ~ mf,type="o", col="blue", lwd=5 )
axis(1,at=1:12,labels=meses)
legend(1, 725, c("Francia","Bulgaria","España"), fill=c("blue","green","red"), box.lty = 0, text.font = 4)
