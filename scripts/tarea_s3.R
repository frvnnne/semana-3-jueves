
# Autor: Francisca Quezada
# Fecha: 27-08-2026
# Que hace: Analiza el precio, la cantidad de vendida y el ingreso mensual de 
#           la venta de cuadernos entre enero y junio

# Vectores
precio <- c(2500, 2700, 2600, 3100, 2900, 3300)
cantidad <- c(120, 95, 110, 80, 90, 70)
mes <- c("enero", "febrero","marzo","abril","mayo","junio")


# Verificacion de vectores
class(precio)
class(cantidad)
class(mes)
length(precio)
length(cantidad)
length(mes)


# Seleccion por posicion
precio[2]               # precio de febrero
precio[4:6]             # precio de los ultimos 3 meses
cantidad[c(1,3,5)]      # cantidad en los meses de: "enero", "marzo" y "mayo"
cantidad[-3]            # cantidad de todos los meses menos "marzo"


# Seleccion por condicion
precio_alto <- precio[precio > 2800] 
num_altos <- sum(precio > 2800)       # cuantos meses superan un precio mayor a 2800
prop_altos <- mean(precio > 2800)     # proporcion de meses con precio alto
num_altos               # para comprobar cantidad de meses
prop_altos              # para comprobar proporcion
# elegi el 2800 porque queda justo por sobre el precio promedio de los 6 meses, 
# asi poder separar los meses mas `caros` de los `normales`.


# Operacion vectorizada
ingreso <- precio * cantidad
precio_ponderado <- sum(ingreso) / sum(cantidad)
ingreso                 # para revisar el ingreso mes a mes
precio_ponderado        # para revisar el precio promedio ponderado
# ingreso calculado asi para ver cuanto se genera realmente con la venta de
# cuadernos mes a mes, y el precio ponderado refleja mejor el precio real que 
# pago la mayoria de los clientes


# Estadisticas
mean(ingreso)           # ingreso promedio mensual
median(ingreso)         # ingreso `tipico`, menos afectado por meses atipicos
sd(ingreso)             # que tan variable es el ingreso mes a mes
quantile(ingreso)       # distribucion completa del ingreso
# mean: se ve inflado por el alto ingreso de enero
# median: menor que el promedio, confirma que enero es atipico
# sd: muestra que varia bastante entre meses
# quantile: la diferencia entre min y max muestra meses buenos y malos