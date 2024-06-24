# Load packages
library(trend)
library(ggplot2)

# Time series data
data <- c(-5,00	-9,00	-14,00	-20,00	-25,00	-29,00	-32,00	-36,00	-39,00	-41,00	-44,00	-46,00	-47,00	-49,00	-50,00	-52,00	-53,00	-55,00	-58,00	-60,00	-61,00	-63,00	-64,00	-66,00	-67,00	-69,00	-72,00	-74,00	-77,00	-79,00	-82,00	-84,00	-87,00	-89,00	-90,00	-92,00	-93,00	-93,00	-94,00	-94,00	-93,00	-93,00)

# Dates corresponding to the years 1980 to 2021
years <- 1980:2021

# Perform the Pettitt test
pettitt_result <- pettitt.test(data)
print(pettitt_result)

# Find the change point from the result of the Pettitt test
change_point <- pettitt_result$estimate

# Create a data frame for the data
df <- data.frame(
  Year = years,
  Value = data[1:length(years)]  
)

# Plot the data and change point
ggplot(df, aes(x = Year, y = Value)) +
  geom_line(color = "blue") +
  labs(title = "Teste de Pettitt para Detecção de Mudança em Séries Temporais",
       x = "Ano",
       y = "Valor") +
  theme_minimal()
