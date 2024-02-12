SELECT NVL (TO_CHAR(id_aport_soli), 'SIN APORTE') AS "ID MOVIMIENTO",  socios.id_socio AS "SOCIOS", NVL (meses_tomados,0) AS "DURACION MESES"
FROM aportes_solicitados,  socios
WHERE aportes_solicitados.id_socio(+)=socios.id_socio
UNION ALL
SELECT NVL (TO_CHAR(id_credito_solicitado), 'SIN CREDITO'),  socios.id_socio, NVL (cant_cuotas,0)
FROM creditos_solicitados,  socios
WHERE creditos_solicitados.id_socio(+)=socios.id_socio;