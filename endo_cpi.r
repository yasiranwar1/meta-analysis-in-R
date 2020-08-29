
library(meta)
library(dmetar)

#Grade All DM----

dm_all <- read.csv(file.choose())

?metabin

dm_all_meta <- metabin(event.e = dm_all$CPI, 
                       n.e = dm_all$Total.CPI.Group,
                       event.c = Control,
                       n.c = dm_all$Total.Control.Group,
                       data = dm_all,
                       studlab = paste(Author_c, Year, sep = ","),
                       comb.fixed = F,
                       #byvar = dm_all$Type,
                       allstudies = T)
sink("dm_all.txt")
dm_all_meta
sink()

forest(dm_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "DM All Grades",
       col.by = "Dark Blue",
       print.byvar = F)

dm_all_meta

eggers.test(dm_all_meta)

funnel(dm_all_meta)
sink("dm_all_egger.txt")
metabias(dm_all_meta)
sink()


#DM Grade 3-----

dm_3 <- read.csv(file.choose())


dm_3_meta <- metabin(event.e = CPI, 
                       n.e = Total.CPI.Group,
                       event.c = Control,
                       n.c = Total.Control.Group,
                       data = dm_3,
                       studlab = paste(Author_c, Year, sep = ","),
                       comb.fixed = F,
                       #byvar = Type,
                       allstudies = T)
sink("dm_3.txt")
dm_3_meta
sink()

forest(dm_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "DM Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)

dm_all_meta

eggers.test(dm_3_meta)

funnel(dm_3_meta)
sink("dm_3_egger.txt")
metabias(dm_3_meta)
sink()

#Hyperthyroidism All Grades----

hyper_all <- read.csv(file.choose())


hyper_all_meta <- metabin(event.e = CPI, 
                     n.e = Total.CPI.Group,
                     event.c = Control,
                     n.c = Total.Control.Group,
                     data = hyper_all,
                     studlab = paste(Author_c, Year, sep = ","),
                     comb.fixed = F,
                     #byvar = Type,
                     allstudies = T)
sink("hyper_all.txt")
hyper_all_meta
sink()

jpeg("hyper_all_forest.jpeg", height = 1400, width = 800)
forest(hyper_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hyperthyroidism All Grades",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hyper_all_meta


funnel(hyper_all_meta)

sink("hyper_all_meta.txt")
metabias(hyper_all_meta)
sink()

sink("hyper_all_corrected.txt")
c <- trimfill(hyper_all_meta)
sink()

funnel(c)

#Hyper Grade 3-----

hyper_3 <- read.csv(file.choose())


hyper_3_meta <- metabin(event.e = CPI, 
                          n.e = Total.CPI.Group,
                          event.c = Control,
                          n.c = Total.Control.Group,
                          data = hyper_3,
                          studlab = paste(Author_c, Year, sep = ","),
                          comb.fixed = F,
                          #byvar = Type,
                          allstudies = T)
sink("hyper_3_meta.txt")
hyper_3_meta
sink()

jpeg("hyper_3_forest.jpeg", height = 1400, width = 800)
forest(hyper_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hyperthyroidism Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hyper_all_meta


funnel(hyper_3_meta)

sink("hyper_3_eggers.txt")
metabias(hyper_3_meta)
sink()

sink("hyper_3_corrected.txt")
trimfill(hyper_3_meta)
sink()

funnel(c)

#Hypophysitis All Grades----

hypoP_all <- read.csv(file.choose())


hypoP_all_meta <- metabin(event.e = CPI, 
                          n.e = Total.CPI.Group,
                          event.c = Control,
                          n.c = Total.Control.Group,
                          data = hypoP_all,
                          studlab = paste(Author_c, Year, sep = ","),
                          comb.fixed = F,
                          #byvar = Type,
                          allstudies = T)
sink("hypoP_all.txt")
hypoP_all_meta
sink()

jpeg("hypoP_all_forest.jpeg", height = 1400, width = 800)
forest(hypoP_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hypophysitis All Grades",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hypoP_all_meta


funnel(hypoP_all_meta)

sink("hypoP_all_eggers.txt")
metabias(hypoP_all_meta)
sink()

sink("hypoP_all_corrected.txt")
c <- trimfill(hypoP_all_meta)
sink()

funnel(c)


#Hypophysitis Grade 3 ----

hypoP_3 <- read.csv(file.choose())


hypoP_3_meta <- metabin(event.e = CPI, 
                          n.e = Total.CPI.Group,
                          event.c = Control,
                          n.c = Total.Control.Group,
                          data = hypoP_3,
                          studlab = paste(Author_c, Year, sep = ","),
                          comb.fixed = F,
                          #byvar = Type,
                          allstudies = T)
sink("hypoP_3.txt")
hypoP_3_meta
sink()

jpeg("hypoP_3_forest.jpeg", height = 1400, width = 800)
forest(hypoP_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hypophysitis Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hypoP_3_meta


funnel(hypoP_3_meta)

sink("hypoP_3_eggers.txt")
metabias(hypoP_3_meta)
sink()

sink("hypoP_3_corrected.txt")
c <- trimfill(hypoP_3_meta)
sink()

funnel(c)

#Hypothyroidism All Grade-----

hypo_all <- read.csv(file.choose())


hypo_all_meta <- metabin(event.e = CPI, 
                          n.e = Total.CPI.Group,
                          event.c = Control,
                          n.c = Total.Control.Group,
                          data = hypo_all,
                          studlab = paste(Author_c, Year, sep = ","),
                          comb.fixed = F,
                          #byvar = Type,
                          allstudies = T)
sink("hypo_all.txt")
hypo_all_meta
sink()

jpeg("hypo_all_forest.jpeg", height = 1400, width = 800)
forest(hypo_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hypothyroidism All Grades",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hypo_all_meta


funnel(hypo_all_meta)

sink("hypo_all_eggers.txt")
metabias(hypo_all_meta)
sink()

sink("hypo_all_corrected.txt")
c <- trimfill(hypo_all_meta)
sink()

funnel(c)


#Hypothyroidism Grade 3-----

hypo_3 <- read.csv(file.choose())


hypo_3_meta <- metabin(event.e = CPI, 
                        n.e = Total.CPI.Group,
                        event.c = Control,
                        n.c = Total.Control.Group,
                        data = hypo_3,
                        studlab = paste(Author_c, Year, sep = ","),
                        comb.fixed = F,
                        #byvar = Type,
                        allstudies = T)
sink("hypo_3.txt")
hypo_3_meta
sink()

jpeg("hypo_3_forest.jpeg", height = 1400, width = 800)
forest(hypo_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Hypothyroidism Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

hypo_3_meta


funnel(hypo_3_meta)

sink("hypo_3_eggers.txt")
metabias(hypo_3_meta)
sink()

sink("hypo_3_corrected.txt")
c <- trimfill(hypo_3_meta)
sink()

funnel(c)


#Primary Adrenal Insufficiency All Grades-----

pai_all <- read.csv(file.choose())


pai_all_meta <- metabin(event.e = CPI, 
                         n.e = Total.CPI.Group,
                         event.c = Control,
                         n.c = Total.Control.Group,
                         data = pai_all,
                         studlab = paste(Author_c, Year, sep = ","),
                         comb.fixed = F,
                         byvar = Type,
                         allstudies = T)
sink("pai_all.txt")
pai_all_meta
sink()

jpeg("pai_all_forest.jpeg", height = 1400, width = 800)
forest(pai_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "PAI All Grades",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

pai_all_meta


funnel(pai_all_meta)

sink("pai_all_eggers.txt")
metabias(pai_all_meta)
sink()

sink("pai_all_corrected.txt")
c <- trimfill(pai_all_meta)
sink()

funnel(c)

#PAI Grade 3

pai_3 <- read.csv(file.choose())


pai_3_meta <- metabin(event.e = CPI, 
                        n.e = Total.CPI.Group,
                        event.c = Control,
                        n.c = Total.Control.Group,
                        data = pai_3,
                        studlab = paste(Author_c, Year, sep = ","),
                        comb.fixed = F,
                        #byvar = Type,
                        allstudies = T)
sink("pai_3.txt")
pai_3_meta
sink()

jpeg("pai_3_forest.jpeg", height = 1400, width = 800)
forest(pai_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "PAI Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

pai_3_meta


funnel(pai_3_meta)

sink("pai_3_eggers.txt")
metabias(pai_3_meta)
sink()

sink("pai_3_corrected.txt")
c <- trimfill(pai_3_meta)
sink()

funnel(c)


#Thyroiditis All Grades----

t_all <- read.csv(file.choose())


t_all_meta <- metabin(event.e = CPI, 
                        n.e = Total.CPI.Group,
                        event.c = Control,
                        n.c = Total.Control.Group,
                        data = t_all,
                        studlab = paste(Author_c, Year, sep = ","),
                        comb.fixed = F,
                        #byvar = Type,
                        allstudies = T)
sink("t_all.txt")
t_all_meta
sink()

jpeg("t_all_forest.jpeg", height = 1400, width = 800)
forest(t_all_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Thyroiditis All Grades",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

t_all_meta


funnel(t_all_meta)

sink("t_all_eggers.txt")
metabias(t_all_meta)
sink()

sink("t_all_corrected.txt")
c <- trimfill(t_all_meta)
sink()

funnel(c)

#Thyroiditid Grade 3-----

t_3 <- read.csv(file.choose())


t_3_meta <- metabin(event.e = CPI, 
                      n.e = Total.CPI.Group,
                      event.c = Control,
                      n.c = Total.Control.Group,
                      data = t_3,
                      studlab = paste(Author_c, Year, sep = ","),
                      comb.fixed = F,
                      #byvar = Type,
                      allstudies = T)
sink("t_3.txt")
t_3_meta
sink()

jpeg("t_3_forest.jpeg", height = 1400, width = 800)
forest(t_3_meta,
       lab.e = "CPI Group    ",
       lab.c = "Control Group",
       smlab = "Thyroiditis Grade 3",
       col.by = "Dark Blue",
       print.byvar = F)
dev.off()

t_3_meta


funnel(t_3_meta)

sink("t_3_eggers.txt")
metabias(t_3_meta)
sink()

sink("t_3_corrected.txt")
trimfill(t_3_meta)
sink()

funnel(c)
