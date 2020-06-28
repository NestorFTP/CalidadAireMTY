########################################################################################
########                            Calidad del Aire Monterrey                  ########
########                        Autor Néstor Felipe Torres Pacheco              ########
########################################################################################

# Instalación de librería Devtools

install.packages("devtools")

#Instalación de dplyr a través de github
devtools::install_github("hadley/dplyr")
library("dplyr")

#Instalación de librería tidyr
install.packages("tidyr")
library("tidyr")

#Lectura de csv
data <- read.csv("/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/data.csv", sep=",", header = TRUE) 

PM10$results.parametro

PM10 <- filter(data, data$results.parametro=="PM10") %>% slice(1:500)

str(PM10)

  
max(PM10$results.valororig)  
min(PM10$results.valororig)  

filter(PM10, PM10$results.valororig=="623")

PM10$results.valororig

hd <- head(PM10)  

min(hd$results.valororig)


PM10Max <- filter(data$results.valororig == max(data$results.valororig))
  
colMax(PM10)


  data$results.valororig


result <- data %>% 
  group_by(data$results.parametro) %>%
  filter(data, data$results.parametro=="PM10") %>% slice(1:500)%>%
  filter(value == max(data$results.parametro)) %>%
  arrange(data$results.parametro)







filter(data, data$results.parametro=="PM10") %>% slice(1:500)

data[33000:33050,]

mean(data[40000:40050,]$results.valororig)


mean(Datos$edad)


parametros <- unique(data$results.parametro)
max(data$results.valororig)


param <- c(levels(parametros))
descr <- c("Monoxido de Carbono","Dióxido de Nitrógeno", "Ozono Troposférico", "Partículas PM10", "Partículas PM2.5", "Dióxido de Azufre", "Temperatura")

param
descr

categorias <- data.frame(param,descr)
categorias
