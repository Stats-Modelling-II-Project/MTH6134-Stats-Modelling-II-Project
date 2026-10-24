library(readr)
league_players <- read_csv("league_players.csv")


model1 <- glm(injured ~ training_load,
              family = binomial(link = "logit"),
              data = league_players)

summary(model1)

exp(coef(model1))

# Plot injury status against training intensity
plot(league_players$training_load,
     league_players$injured,
     xlab = "Training intensity",
     ylab = "Injured (1 = Yes, 0 = No)",
     xlim = c(1, 5),
     ylim = c(0, 1),
     pch = 16)

# Add fitted logistic regression probabilities
lines(1:5,
      predict(model1,
              newdata = data.frame(training_load = 1:5),
              type = "response"),
      col = "red",
      lwd = 2)