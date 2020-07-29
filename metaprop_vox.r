

orr <- read.csv(file.choose())

View(orr)

orr <- orr[1:6, 1:4]

orr[1, 3] <- 73
orr[1, 4] <- 165

#install.packages(meta)

library(meta)

?meta

orrmeta <- metaprop(event = response,
                    n= Total.population,
                    data = orr,
                    studlab = paste(Author, Year, sep = ","),
                    method.tau = "DL",
                    method = "inverse",
                    sm = "plogit",
                    comb.fixed = F)

orrmeta

sink("orrmeta.txt")
orrmeta
sink()

forest(orrmeta,
       col.diamond = "light blue",
       col.square = "blue",
       colgap.forest.left = "0.5cm",
       smlab = "Overall Response Rate")
