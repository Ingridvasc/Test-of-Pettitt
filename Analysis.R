# Carregar os pacotes
library(trend)
library(ggplot2)

# Dados de série temporal
data <- c(-5,00	-9,00	-14,00	-20,00	-25,00	-29,00	-32,00	-36,00	-39,00	-41,00	-44,00	-46,00	-47,00	-49,00	-50,00	-52,00	-53,00	-55,00	-58,00	-60,00	-61,00	-63,00	-64,00	-66,00	-67,00	-69,00	-72,00	-74,00	-77,00	-79,00	-82,00	-84,00	-87,00	-89,00	-90,00	-92,00	-93,00	-93,00	-94,00	-94,00	-93,00	-93,00)

# Datas correspondentes aos anos de 1980 a 2021
years <- 1980:2021

# Realiza o teste de Pettitt
pettitt_result <- pettitt.test(data)
print(pettitt_result)

# Encontra o ponto de mudança a partir do resultado do teste de Pettitt
change_point <- pettitt_result$estimate

# Cria um data frame para os dados
df <- data.frame(
  Year = years,
  Value = data[1:length(years)]  # Ajusta para ter o mesmo comprimento de 'years'
)

# Plota os dados e o ponto de mudança
ggplot(df, aes(x = Year, y = Value)) +
  geom_line(color = "blue") +
  labs(title = "Teste de Pettitt para Detecção de Mudança em Séries Temporais",
       x = "Ano",
       y = "Valor") +
  theme_minimal()
