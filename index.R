df <- read.csv("casos_sarampion.csv", stringsAsFactors=TRUE)##Leyendo el csv
dat <- df[c(3, 19, 28), ]##Extrayendo los datos de Luxemburgo, Bulgaria y España
dat <- dat[ ,c( 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)]##Extrayendo las columnas con los casos por mes
dat <- data.frame(t(dat))##Cambiando filas por columnas
names(dat)[1] <- "Bulgaria"
names(dat)[2] <- "Luxembourg"
names(dat)[3] <- "Spain"##Renombrando las columnas
meses <- row.names(dat)##Creando una lista con los meses
mf <- factor(meses,levels=c("Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec","Jan", "Feb", "Mar"))##Creando un factor con los mesas
plot(dat$Bulgaria ~ mf,xaxt="n",ylim=c(1,370), type="o", col="dark green", lwd=5, main="Casos Sarampión (Abril 2019 - Marzo 2020)", xlab="Mes", ylab= 'Número de casos', cex.lab=1.2)##Creando la linea de BUlgaria en la grafica
lines(dat$Spain  ~ mf,type="o", col="red", lwd=5 )##Creando la línea de ESpaña en la gráfica
lines(dat$Luxembourg ~ mf,type="o", col="blue", lwd=5 )##Creando la línea de luxemburge en la gráfica
axis(1,at=1:12,labels=meses)##Poniendredo el nombre de los meses
legend(1, 375, c("Luxemburgo","Bulgaria","España"), fill=c("blue","dark green","red"), box.lty = 0, text.font = 4)##Creando la leyenda

