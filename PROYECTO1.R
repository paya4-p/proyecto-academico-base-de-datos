nombrePelicula <- c("Shrek", "Shrek_2", "Shrek Tercero", "Shrek felices por siempre")
nombrePelicula
class(nombrePelicula)
#Puntuación de la película
puntuacionPelicula <- c(8.1, 7.5, 6.3, 6.5)
puntuacionPelicula
class(puntuacionPelicula)
#Películas posteriores a 2005
posterior2005 <- c(FALSE, FALSE, TRUE, TRUE)
posterior2005
class(posterior2005)

puntuacionPelicula + 2
#Dividir la puntuación de las películas en 2
puntuacionPelicula/2
#Crear puntuación del profesor
puntuacionProfesor <- c(30, 25, 22, 20)
puntuacionProfesor
puntuacionProfesor - puntuacionPelicula
#Vector para la diferencia de puntajes
resultadoPuntajes <- c(puntuacionProfesor - puntuacionPelicula)

length(nombrePelicula)

mean(puntuacionPelicula)
mean(puntuacionProfesor)
mean(resultadoPuntajes)

nombrePelicula[3]
nombrePelicula[4]

nombrePelicula[c(1, 4)]

puntuacionBaja <- puntuacionPelicula < 7
puntuacionBaja
puntuacionProfesor < 20
puntuacionProfesor <= 20

puntuacionPelicula [puntuacionBaja]

nombrePelicula [puntuacionBaja]
#Crear las casas de películas a partir de vectores
Warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
Disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
Fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

cantidadPeliculas <- matrix(c(Warner, Disney, Fox), nrow = 9, ncol = 3)
cantidadPeliculas

colnames(cantidadPeliculas) <- c("Warner", "Disney", "Fox")
cantidadPeliculas

rownames(cantidadPeliculas) <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
cantidadPeliculas
class(productos_7_)
attach(productos_7_)
tg<-table(venta_producto)
tg
TP_g<-prop.table(tg)
TP_G<-TP_g * 100
TP_G
barplot(TP_G)

class(productos_7_)
attach
tg<-table(venta_producto)
tg
barplot(TP_G)
