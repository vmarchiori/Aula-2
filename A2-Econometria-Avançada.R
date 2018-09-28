# Econometria Avançada A2

# Noções Básicas - RSTUDIO

x <- 1:10 # utilizado para criar objeto x com elementos de 1:10
y <- rep(3,10) # utilizado para criar objeto y com 10 repetições do numero 3
ls() #lista todos os objetos que estÃo no campo "global environment"
rm(list="x","y") #apaga os objetos x e //y
rm(list = ls()) #Apaga todos os dados em console
setwd("G:/USJT/Econometria") #altera a pasta de trabalho do R para salvar
getwd() #comando que mostra a pasta de trabalho atual do R

# Para Instalar os Pacotes de utilização

install.packages("pwt8") #instala o pacote pwt8
library("pwt8") # Mecanismo de START pacote pwt8
data("pwt8.0") #carrega os dados pwt8.0 disponiveis no pacote
View (pwt8.0) #vizualiza a tabela pwt8.0

# Comando para extrair os dados da tabela

br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr")) #cria a tabela br onde estão escolhido o pais Brasil e as variaveis
colnames(br) <-  c("PIB","Trabalho","Cambio") #altera o nome das variaveis

# Comando para Contruit Graficos

plot(br$PIB) #cria um grafico através dos valores selecionados de PIB na tabela br
plot(br$PIB, type = "l") #Converte os valores em forma de linha
dados <- ts(br, start = 1950, frequency = 1) #Monta a tabela dados como série temporal que se inicia em no ano de 1950, com frequênci anual
plot(dados) #Monta um grafico detabelasde dados
plot(dados, col="blue", main="Dados Brasileiros", xlab="Ano") #muda o titulo e a cor das linhas do grafico para azul

#Salvar CNVAZQUEZ

write.csv(br, file="C:/Econometria/Dados-Brasileiros.csv") #salva a tabela
