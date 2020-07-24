data <- data <- structure(list(Study = c("Khaled, 2019", "El-Haggar,2018", "Eghbali,2017", 
                                 "Fernandes, 2013"), n.e = c(20L, 20L, 29L, 5L), Before_mean.e = c(40.63, 
                                  21.9, 21.9, 21.7), Before_Std.e = c(5.45, 8.7, 8, 7.2), After_mean.e = c(43.26, 
                                  24.6, 24.5, 28.2), After_std.e = c(5.35, 9.4, 7.6, 7.9), n.c = c(20L, 
                                  20L, 27L, 10L), Before_mean.c = c(53.23, 21.8, 23.9, 24.7), Before_Std.c = c(6.61, 
                                  7.7, 7.6, 7.8), After_mean.c = c(52.99, 22.94, 21.1, 26.2), After_std.c = c(6.6, 
                                  7.1, 7.3, 11.4)), row.names = c(NA, 4L), class = "data.frame")

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


       
