Historial3 = [9530, 4120, 4580, 1500, 890,7516,426]
gastosT_Lennon = 0
promedio_Lennon = 0

for i in Historial3:
    gastosT_Lennon += i

promedio_Lennon = gastosT_Lennon / len(Historial3)

if promedio_Lennon > 4500:
    print('Se ha excedido del gasto promedio para su mascota.')
else:
    print('El promedio es: ', promedio_Lennon)