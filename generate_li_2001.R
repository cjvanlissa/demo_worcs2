conds <- expand.grid(rock_type = c("sandstone", "granite", "slate"),
                     chalk = c("no", "yes"),
                     dampness = c("dry", "wet"))


vals <- expand.grid(rock_type = c("sandstone" = .4 , "granite" = -.4, "slate" = -.4),
chalk = c("no" = +.2, "yes" = -.2),
dampness = c("dry" = -.1, "wet" = +.1))

vals$dampness[conds$chalk =="yes"] <- -1*vals$dampness[conds$chalk =="yes"]
conds$mean <- 2.8 + rowMeans(vals)

df <- do.call(rbind, replicate(30, conds, simplify = FALSE))
df$friction <- rnorm(nrow(df), mean = df$mean, sd = .5)
df[["mean"]] <- NULL
summary(lm(friction ~ ., df))
write.csv(df, "chalk_li_2001.csv", row.names = FALSE)