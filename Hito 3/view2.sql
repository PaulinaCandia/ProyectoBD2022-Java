create or replace view cuotasPagadas AS
select cr.nombre nombre_credito,
c.id_cuota,
to_char(c.monto_pago,'L9g999g999') monto_pagado
from cuotas c
join creditos_solicitados cs
on c.id_credito_solicitado=cs.id_credito_solicitado
join creditos cr
on cs.id_credito=cr.id_credito
where c.estado_cuota='pagada'
and fecha_pago between('01-07-2022') and ('30-07-2022');


create or replace view ClientesNuevos AS
select s.nombre||' '||s.ap_paterno nombre_socio,
s.fecha_inscripcion fecha_inscripcion,
to_char(s.aporte_inscripcion,'L999g999') aporte_inscripcion,
s.direccion,
r.ciudad,
p.nombre_profesion profesion
from socios s
join profesiones p
on s.id_profesion=p.id_profesion
join residencias r
on s.ID_RESIDENCIA=r.id_residencia
where categoria_id_categoria=1
and to_char(fecha_inscripcion,'MM') =to_char(sysdate,'MM')
order by fecha_inscripcion;

create or replace view AporteAcumulado AS
select 
to_char(fecha_inscripcion,'MONTH-YYYY') Periodo,
to_char(sum(aporte_inscripcion),'L99g999g999') monto
from socios
group by to_char(fecha_inscripcion,'MONTH-YYYY');

create or replace view PagoCreditoAcumulado AS
select
to_char(sum(c.monto_pago),'L99g999g999') monto,
count(c.id_credito_solicitado) numero_cuotas_pagadas,
cr.nombre nombre,
s.nombre||' '||s.ap_paterno nombre_socio
from cuotas c
join creditos_solicitados cs
on c.id_credito_solicitado= cs.id_credito_solicitado
join creditos cr
on cs.id_credito=cr.id_credito
join socios s
on cs.id_socio=s.id_socio 
where s.categoria_id_categoria=2
and c.estado_cuota='pagada'
and to_char(c.fecha_pago,'dd-mm-yyyy') between ('01-07-2022') and ('30-07-2022')
group by s.nombre||' '||s.ap_paterno, cr.nombre;

create or replace view ClientesMorosos AS
select
cr.nombre nombre_credito,
count(c.estado_cuota) cuotas_impagas,
s.nombre,
s.ap_paterno apellido_paterno,
s.ap_materno apellido_materno
from cuotas c
join creditos_solicitados cs
on c.id_credito_solicitado=cs.id_credito_solicitado
join creditos cr
on cs.id_credito=cr.id_credito
join socios s
on cs.id_socio=s.id_socio
where c.estado_cuota='multada' 
and to_char(c.fecha_vencimiento,'dd-mm-yyyy') between ('01-07-2022') and ('30-07-2022')
group by cr.nombre, s.nombre, s.ap_paterno, s.ap_materno;



