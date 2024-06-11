df_fairuz=read.delim("clipboard") 
head(df_fairuz) 
model_reg=lm(df_fairuz$Y~df_fairuz$X) 
summary(model_reg)

df_fairuz <- read.csv("clipboard", sep = ',')
df_fairuz$brick_dummy <- ifelse(df_fairuz$Brick == "Yes", 1, 0)
df_fairuz$n_dummy1 <- ifelse(df_fairuz$Neighborhood == "west", 1, 0)
df_fairuz$n_dummy2 <- ifelse(df_fairuz$Neighborhood == "North", 1, 0)
model <- lm(df_fairuz$Price ~ df_fairuz$SqFt + df_fairuz$Bedrooms + df_fairuz$Bathrooms + df_fairuz$brick_dummy + df_fairuz$n_dummy1 + df_fairuz$n_dummy2)
summary(model)

by(df_fairuz$Price, df_fairuz$Neighborhood, mean)
by(df_fairuz$Price, df_fairuz$Brick, mean)
