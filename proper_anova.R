# data
area_a <- c(2.92, 1.88, 5.35, 3.81, 4.69, 4.86, 5.81, 5.55)
area_b <- c(1.84, 0.95, 4.26, 3.18, 3.44, 3.69, 4.95, 4.47)

# t-test
t_out <- t.test(area_a, area_b, var.equal = T)
t_out

# format for anova and regression
area_df <- data.frame(values = c(area_a, area_b),
                      area = c(rep('a',8), rep('b',8))
                      )

# anova test
anova_out <- anova(lm(values ~ area, data = area_df))
anova_out

# using a linear regression model 
area_model <- lm(values ~ area, data = area_df)
summary(area_model)

# yes the same p-value, but that suggests that area is not 
# an important variable in this model? It's the only variable

boxplot(area_df$values ~ area_df$area)

