data <- read.csv(file.choose())

data$mean.change.e <- data$After_mean.e - data$Before_mean.e

data$sd.change.e <- sqrt(data$After_std.e^2 + data$Before_Std.e^2 -
                         (2*0.7*data$Before_Std.e*data$After_std.e))



data$mean.change.c <- data$After_mean.c - data$Before_mean.c

data$sd.change.c <- sqrt(data$After_std.c^2 + data$Before_Std.c^2 -
                           (2*0.7*data$After_std.c*data$Before_Std.c))

library(meta)

ppmeta <- metacont(n.e = data$n.e,
                   mean.e = data$mean.change.e,
                   sd.e = data$sd.change.e,
                   n.c = data$n.c,
                   mean.c = data$mean.change.c,
                   sd.c = data$sd.change.c,
                   data = data,
                   sm = "SMD",
                   studlab = data$Study,
                   comb.fixed = F,
                   method.smd = "cohen",
                   method.tau = "DL") 

ppmeta

forest(ppmeta,
       digits.se =2,
       colgap = "0.5cm",
       leftcols = c("studlab"),
       leftlabs = c("Study"),
       colgap.forest.left = "3cm",
       smlab = "Myocardial T2",
       col.diamond = "light blue")


       
