df_fairuz <- read.delim("clipboard")
View(df_fairuz)

model <- aov(Korosi~Metode, data=df_fairuz) 
summary(model)

tukey.test <- TukeyHSD(model) 
tukey.test

df_fairuz=PlantGrowth 
View(df_fairuz)

model <- aov(weight~group, data=df_fairuz) 
summary(model)

tukey.test <- TukeyHSD(model) 
tukey.test
