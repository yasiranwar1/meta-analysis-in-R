#install.packages("tidyverse")

  library("tidyverse")

abc <- read_csv(file.choose())
abc$Cholesterol[abc$Treatment == "A"]

head(abc, 5)

mean(abc$Cholesterol)

median(abc$Cholesterol)

head(sort(table(abc$Cholesterol), decreasing = T))

#summary-------------------

abc$Group <- as.factor(abc$Group)
abc$Treatment <- as.factor(abc$Treatment)

head(abc)

summary(abc)

# central tendency-------------------

sd(abc$Cholesterol)

var(abc$Cholesterol)

cor(abc$Age, abc$Cholesterol, method= "pearson")

ggplot(abc, aes(x= Age, y= Cholesterol))+
  geom_point()

#-------------------------------

#two-sample t test 

library(car)

leveneTest(Cholesterol~Treatment, data= abc)

ggplot(abc, aes(x= Treatment, y= Cholesterol, fill= Treatment))+
  geom_boxplot(color= "black")

?t.test
t.test(abc$Cholesterol[abc$Treatment == "A"], 
       abc$Cholesterol[abc$Treatment == "B"], paired = F, 
       var.equal = T)

sink("t_test.txt")

t.test(abc$Cholesterol~abc$Treatment, paired = F, 
       var.equal= T)
sink()

#-----------------------

abc %>% arrange(desc(Cholesterol))

#--------------------------------
