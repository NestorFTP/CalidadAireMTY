install.packages("ggmap")
install.packages("ggplot2")
library("ggplot2")
library("ggmap")


loc <- c(lon=-100.46472222222,lat=25.675555555556)

#map <- get_map(location=loc, zoom=17, source = "google", maptype = "roadmap", crop=T)

#----
p <- ggmap(get_googlemap(center = loc, zoom = 11, scale = 2, maptype ='terrain',color = 'color'))
#---

map <- get_googlemap("Monterrey, Nuevo León", zoom = 8, maptype = "terrain")

GOOGLE_API_KEY <- "AIzaSyA_Byg-LtEE7l5JXP9tiaxtMDQnJ98F85I"





library(ggmap)
register_google(key = "AIzaSyA_Byg-LtEE7l5JXP9tiaxtMDQnJ98F85I")  
map <- get_map(location = "Xalapa", zoom = 10, source = "google", maptype = "roadmap")  
ggmap(map, fullpage = TRUE)  



qmap(location = "Monterrey", zoom = 14, source = "google")



if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("dkahle/ggmap", ref = "tidyup", force=TRUE)


#IMPORTANTES
library("ggmap")
ggmap::register_google(key = "AIzaSyA_Byg-LtEE7l5JXP9tiaxtMDQnJ98F85I")
#---------------------
################################ INICIO CÓDIGO ################################
lat <- c(25.555372,25.85569)
long <- c(-100.024136,-100.63468541)
bbox <- make_bbox(long,lat,f=0.099)
#b <- get_map(bbox,maptype="toner-lite",source="stamen")

options(digits=8)
bbox <- c(left = -97.1268, bottom = 31.536245, right = -97.099334, top = 31.559652)
get_stamenmap(bbox, maptype = "terrain", zoom=11)            %>% ggmap()
###############################################################################

#lat <- c(25.555372,25.85569)
#long <- c(-100.024136,-100.63468541)
#bbox <- make_bbox(long,lat,f=0.099)
#b <- get_map(bbox,maptype="toner-lite",source="stamen")








#################### P L O T E O     F I N A L #################################

options(digits=5)
setwd("/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/")
mty_stations<-read_csv("stations.csv")
mty_stations <- mty_stations[1:13,c("latitude", "longitude","stationName")]


#bottom = 25.583467351339777, left = -100.61162641907686
bbox <- c(left = -100.64364451089435, bottom = 25.55731478142438, right = -99.98222709432538, top = 25.856896759551553)

ggmap(get_map(bbox)) + geom_point(aes(x=longitude, y=latitude),data = mty_stations, colour="chocolate3", size=2)




############# READ CSV ###########
options(digits=22)
setwd("/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/")
mty_stations<-read_csv("stations.csv",sep=",", header=T, check.names=FALSE, options(digits=22))
mty_stations <- mty_stations[1:13,c("latitude", "longitude")]

ggmap(b) #


mty_stations






?get_stamenmap





bbox <- c(left = -97.1268, bottom = 31.536245, right = -97.099334, top = 31.559652)

ggmap(get_stamenmap(bbox, zoom = ))
ggmap(get_stamenmap(bbox, zoom = 11))
ggmap(get_stamenmap(bbox, zoom = 15))
ggmap(get_stamenmap(bbox, zoom = 17))




place <- "rio de janeiro"
google <- get_googlemap(place, zoom = 1)
ggmap(google)

bbox <- bb2bbox(attr(google, "bb"))

##
get_stamenmap(bbox, maptype = "terrain")            %>% ggmap()
ggmap(get_stamenmap(bbox, zoom = 13))
##
get_stamenmap(bbox, maptype = "terrain-background") %>% ggmap()
get_stamenmap(bbox, maptype = "terrain-labels")     %>% ggmap(b)
get_stamenmap(bbox, maptype = "terrain-lines")      %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner")              %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-2010")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-2011")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-background")   %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-hybrid")       %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-labels")       %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-lines")        %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-lite")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "watercolor")         %>% ggmap(b)


#get_stamenmap(bbox, zoom = 10) %>% ggmap() +
 # geom_point(aes(x = 25.6733733, y = -100.3290446), data = gc, colour = "red", size = 2)




##################################### read csv


options(digits=22)
setwd("/home/nestor/Documentos/Projects/Maestría/CalidadAireMTY/data/")
mty_stations<-read_csv("stations.csv",sep=",", header=T, check.names=FALSE, options(digits=22))
mty_stations <- mty_stations[1:100,c("latitude", "longitude")]


################################ FIN CÓDIGO ################################







usa_center = as.numeric(geocode("United States"))

USAMap = ggmap(get_googlemap(center=usa_center, scale=2, zoom=4), extent="normal")



geom_point(aes(x = -100.46472222222, y = 25.675555555556, colour = offense), size = 1)



get_local_spot <-  get_map("Durham North Carolina", maptype = "roadmap", zoom = 10) 


loc <- c(lon=-100.46472222222,lat=25.675555555556)


map <- get_googlemap("Monterrey, Nuevo León", zoom = 8, maptype = "terrain")


ggmap(map) + 
  theme_void() + 
  ggtitle("terrain") + 
  theme(
    plot.title = element_text(colour = "orange"), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )





library(ggmap)


HoustonMap <- qmap("houston", zoom = 14, color = "bw")



unizar <- geocode('Calle de Pedro Cerbuna 12, Zaragoza, España', 
  source = "google")
map.unizar <- get_map(location = as.numeric(unizar),
  color = "color",
  maptype = "roadmap",
  scale = 2,
  zoom = 16)


















install.packages("tidyverse")
library(tidyverse)
library(ggmap)





library(ggmap)

lat <- c(25.555372,25.85569)
long <- c(-100.024136,-100.63468541)
bbox <- make_bbox(long,lat,f=0.099)
b <- get_map(bbox,maptype="toner-lite",source="stamen")

ggmap(b)

 ?get_stamenmap





bbox <- c(left = -100.61162641907686, bottom = 25.583467351339777, right = -100.04222709432538, top = 25.856896759551553)

ggmap(get_map(bbox))

ggmap(get_stamenmap(bbox, zoom = ))
ggmap(get_stamenmap(bbox, zoom = 14))
ggmap(get_stamenmap(bbox, zoom = 15))
ggmap(get_stamenmap(bbox, zoom = 17))

#place <- "rio de janeiro"
#google <- get_googlemap(place, zoom = 1)
#ggmap(google)

#bbox <- bb2bbox(attr(google, "bb"))

##
get_stamenmap(bbox, maptype = "terrain", zoom=11)            %>% ggmap()



geom_point(aes(x = Longitude, y = Latitude, size=sqrt(estArea)),
  data = data, alpha = .5, color="darkred")+



















ggmap(get_stamenmap(bbox, zoom = 13))
##
get_stamenmap(bbox, maptype = "terrain-background") %>% ggmap()
get_stamenmap(bbox, maptype = "terrain-labels")     %>% ggmap()
get_stamenmap(bbox, maptype = "terrain-lines")      %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner")              %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-2010")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-2011")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-background")   %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-hybrid")       %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-labels")       %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-lines")        %>% ggmap(b)
get_stamenmap(bbox, maptype = "toner-lite")         %>% ggmap(b)
get_stamenmap(bbox, maptype = "watercolor")         %>% ggmap(b)





get_stamenmap(bbox, zoom = 11) %>% ggmap() +
  geom_point(aes(x = 25.6817032, y = -100.3189623), data = gc, colour = "red", size = 2)


bbox <- c(left = -97.1268, bottom = 31.536245, right = -97.099334, top = 31.559652)








nl <- get_map(location = c(lon = -100.3631312, lat = 25.6877275), zoom = 11)

ggmap(nl) +
  geom_point(data = mydf, aes(x = longitude, y = latitude, fill = genus), size = 3, shape = 21)





