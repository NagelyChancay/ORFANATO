------------------------Primer consulta---------------------------

---Mostrar los datos primordiales de la salud de los niños (Patología, médico tratante y tratamiento---
select 
H.NOMBRE_H AS NOMBRE_HUERFANO,
H.APELLIDO_H AS APELLIDO_HUERFANO,
H.GENERO_H AS GENERO,
M.PAT_MEDICA AS PATOLOGIA_MEDICA,
M.MEDICO AS MEDICO_TRATANTE,
M.TTO_MED AS TRATAMIENTO_MEDICO
from HUERFANO H
inner join FICHA_MEDICA M on M.ID_HUERFANO=H.ID_HUERFANO


------------------------Segunda consulta---------------------------
--Mostrar los cuatro primeros huérfanos ingresados desde el año 2017 al 2020--
select
H.NOMBRE_H AS NOMBRE,
H.APELLIDO_H AS APELLIDO,
H.CI_H AS CEDULA_HUERFANO,
H.GENERO_H AS GENERO,
I.FECHA_INGRESO AS FECHA_DE_INGRESO
from HUERFANO H 
inner join FICHA_INGRESO I on I.ID_HUERFANO=H.ID_HUERFANO
where 
I.FECHA_INGRESO >'01-01-2017' AND I.FECHA_INGRESO<'31-12-2020'
ORDER BY I.FECHA_INGRESO ASC;



------------------------Tercer consulta---------------------------

--Número de seguimiento de casos realizado por cada administrativo, dependiendo de los huérfanos existentes dentro del orfanato; 
--en una columna se deberá mostrar el nombre del administrador y en la otra el número total de huérfanos atendidos.--

select 
A.NOMBRE_ADMI as NOMBRE_ADMINISTRADOR,
COUNT (H.NOMBRE_H) as TOTAL 
from HUERFANO H 
inner join FICHA_INGRESO F on F.ID_HUERFANO=H.ID_HUERFANO 
inner join ADMINISTRADOR A on A.ID_FICHA_INGRESO=F.ID_FICHA_INGRESO
group by A.NOMBRE_ADMI
order by TOTAL asc



------------------------Cuarta consulta---------------------------

--Mostrar el total del dinero donado por cada padrino a los huérfanos sin patologías médicas--
select
M.PAT_MEDICA AS PATOLOGIA_MEDICA,
P.NOMBRE_P AS NOMBRE_PADRINO,
P.APELLIDO_P AS APELLIDO_PADRINO,
COUNT (P.APORTACION_P) AS VECES_APORTADAS,
SUM(P.APORTACION_P)AS TOTAL_APORTACIONES
from HUERFANO H 
inner join FICHA_MEDICA M on M.ID_HUERFANO=H.ID_HUERFANO
inner join PADRINO P on P.ID_HUERFANO=H.ID_HUERFANO
where 
M.PAT_MEDICA = 'Sin patología'
group by 
P.APORTACION_P, 
M.PAT_MEDICA,
P.APELLIDO_P,
P.NOMBRE_P
Order by TOTAL_APORTACIONES desc
