########################################################################################
########                            Calidad del Aire Monterrey                  ########
########                        Autor Néstor Felipe Torres Pacheco              ########
########################################################################################
# Instalación de Librería JSON
install.packages("jsonlite", repos="http://cran.r-project.org")
require(jsonlite)
# Instalación de Librería httr
install.packages("httr")
require(httr)
# Instalación de Librería Tidyverse
install.packages("tidyverse")
library(tidyverse)
#Estructura API
base <- "https://api.datos.gob.mx/v2/"
endpoint <- "sinaica"
stock <- "Monterrey"
callAPI_1 <- paste(base,endpoint,"?","city","=", stock, sep="")
#Llamada GET
get_data <- GET(callAPI_1)
#Conversión a Texto
data_text <- content(get_data,"text")
#Conversión JSON
air_quality_mty <- fromJSON(data_text, flatten=TRUE)
# Introducir los datos a un data frame
air_quality_mty_df <- as.data.frame(air_quality_mty)
#Paginación
pages <- air_quality_mty$pagination$total
pages
for(i in 2:pages){
  callAPI_2 <- paste(base,endpoint,"?","city","=", stock,"&","page=",i, sep="")
  get_data_2 <- GET(callAPI_2)
  data_text_2 <- content(get_data_2,"text")
  air_quality_mty_2 <- fromJSON(data_text_2, flatten=TRUE)
  air_quality_mty_df_2 <- as.data.frame(air_quality_mty_2)
  air_quality_mty_df <- rbind(air_quality_mty_df, air_quality_mty_df_2)
}
#Exportar data a csv
write.csv(air_quality_mty_df, "/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/data.csv", row.names = TRUE)
#Estaciones de Monitoreo
endpoint_est <- "sinaica-estaciones"
id<-72
callAPI_EST <- paste(base,endpoint_est,"?","redesid","=", id, sep="")
get_est <- GET(callAPI_EST)
data_est <- content(get_est,"text")
estaciones <- fromJSON(data_est, flatten=TRUE)
estaciones_df <- as.data.frame(estaciones)
#Eliminación de Columnas innecesarias
estaciones_df$pagination.pageSize <- NULL
estaciones_df$pagination.page <- NULL
estaciones_df$pagination.total <- NULL
estaciones_df$X1 <- NULL
#Renombra Columnas
names(estaciones_df)[1] <- "hashCode"
names(estaciones_df)[2] <- "latitude"
names(estaciones_df)[3] <- "longitude"
names(estaciones_df)[4] <- "stationId" 
names(estaciones_df)[5] <- "stationName"
names(estaciones_df)[6] <- "code"
names(estaciones_df)[7] <- "netId"
#Escribir datos en archivo .csv
write.csv(estaciones_df, "/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/stations.csv", row.names = TRUE)



head(estaciones_df)
