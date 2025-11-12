# 2do Parcial - Lenguajes de Programación 1

# Alumno: Germán Liste

# Profesor: Víctor Di Lena

# Lic. en Ciencia de Datos


# 1. Descargar el csv, acceder a dichos datos y almacenarlos en un dataframe.

datos <- read.csv("shopping_behavior_updated.csv", header = TRUE, sep = ",")
print("datos cargados correctamente")
print(head(datos))  # muestra las primeras filas

# 2. Agrupar las edades de la gente por categorías (De 18 a 30, de 31 a 40 y de 41 para arriba) y guardar la cantidad de gente para esos rangos.
datos$GrupoEdad <- ifelse(datos$Age >= 18 & datos$Age <= 30, "18-30",
                          ifelse(datos$Age >= 31 & datos$Age <= 40, "31-40", "41+"))

tabla_edades <- table(datos$GrupoEdad)
print("Cantidad de personas por rango de edad:")
print(tabla_edades)

# 3. Agrupar las cantidades de compras por categorías (pocas: hasta 10, intermedias: de 11 a 30, muchas: más de 30) y guardar la cantidad de gente para esos rangos.

datos$GrupoCompras <- ifelse(datos$Purchase.Count <= 10, "pocas",
                             ifelse(datos$Purchase.Count <= 30, "intermedias", "muchas"))

tabla_compras <- table(datos$GrupoCompras)
print("Cantidad de gente por rango de compras:")
print(tabla_compras)

# 4. Agrupar y mostrar los ítems comprados (item purchased) por tamaño de la compra (ej.: cuántos Jeans en talle S, cuántas remeras en talle M, cuántas blusas talle L, etc.).

tabla_items <- table(datos$Item.Purchased, datos$Size)
print("Cantidad de ítems comprados por tipo y talle:")
print(tabla_items)

# 5️.Agrupar los diferentes colores de los ítems comprados y mostrar las cantidades de cada uno.r

tabla_colores <- table(datos$Color)
print("Cantidad de ítems por color:")
print(tabla_colores)


# En resumen se lee el csv, se crean grupos de edad y de cantidad de compras, se cuentan ítems por tipo/talle y colores
