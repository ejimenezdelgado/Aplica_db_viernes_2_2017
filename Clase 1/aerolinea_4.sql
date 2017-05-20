---Listar todos los números de licencia y nombre
---de los pilotos cuyo nombre es 'Juan'

SELECT licencia, nombre
FROM piloto
WHERE nombre LIKE 'Juan%';

--Listar los nombres de los pilotos que 
--tienen más de 3000 horas de vuelo
SELECT nombre,horas_vuelo
FROM piloto
WHERE horas_vuelo > 3000;


--Listar todos los números de vuelo que llegan 
--Nueva York en orden de número de vuelo
SELECT vuelo,final
FROM vuelo
WHERE final LIKE '4D'
ORDER BY vuelo; -- Ordena los datos según 
--el atributo deseado


--Listar los números de vuelo que salgan de 
--San José y lleguen a Nueva York o Londres.

select * from destino
SELECT vuelo 
FROM vuelo
WHERE inicio LIKE '1D' and 
     ( final LIKE '4D' or 
      final LIKE '5D')


--Listar sin repeticiones los n�meros de vuelo 
--que ha comandado el piloto licencia 1111
SELECT DISTINCT vuelo, piloto -- El "distinct" elimina
-- la repeticion de los datos 
FROM programacion
WHERE piloto = '1111'

--Listar licencia y nombre del piloto de todos los 
--pilotos cuyo apellido empieza con M --(asuma que 
--�nicamente se registra primer nombre y apellido)
SELECT licencia, nombre
FROM piloto
WHERE nombre like '%_M%';

--Listar licencia y nombre del piloto de todos 
--los pilotos cuyo nombre tiene 
--como segunda letra una �a�
SELECT licencia, nombre
FROM piloto
WHERE nombre like '_a%';

--Agregar a todos los pilotos 100 horas de vuelo
SELECT licencia, nombre,horas_vuelo,(horas_vuelo + 100)
FROM piloto;

--El promedio de las horas de vuelo que tienen los 
--pilotos de la aerol�nea.
SELECT AVG(horas_vuelo) 
FROM piloto;  

