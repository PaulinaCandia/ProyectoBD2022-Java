# Informe Entregable 2
## Propuesta modelo Entidad-Relación

Integrantes:
- Nicolás Sepulveda
- Vicente Paredes
- Paulina Candia
- Martin Valenzuela
- Claudia Gómez
- Maickol Reyes

### 1. Introducción
En el siguiente informe, presentaremos nuestros análisis respectivos al caso de la cooperativa Coopera, el análisis que se llevó a cabo dio como resultado, el modelo relacional que propondremos en este informe, este modelo fue realizado acorde a las reglas de negocios previamente señaladas por Alejandro Montenegro, gerente general de Coopera.

Para poder integrar de buena manera las nuevas vistas de negocio solicitadas, como equipo tomamos la decisión de agregar nuevas reglas de negocio que permitan dar una visión más clara a las relaciones entre las entidades existentes y las nuevas entidades, estas nuevas reglas de negocio se encuentran detalladas en este informe.

En el presente documento, también se podrá encontrar la vista de negocio propuesta por nuestro equipo, para los cupones de pago, y multas.

Para este análisis, además de los datos entregados por el gerente, se tomó en cuenta datos desde la vista de un estado de cuenta que se nos entregó.

### 2. Nuevas Reglas de negocio

Propuestas de nuevas reglas de negocios para multas:

-El monto de la multa se irá actualizando de manera diaria al finalizar el día(23:59).
Este punto hace referencia a la actualización diaria automática de la multa en un horario preprogramado.

-El monto total de la multa se añadirá al monto total de la cuota, este se calcula usando el monto de la deuda y de la cuota.
En este punto acordamos que el interés es simple.

-El porcentaje de deuda será 0.03 diario acumulable del monto total a pagar.
En este punto acordamos que la tasa de interés debería ser fija.

Propuestas de nuevas reglas de negocios para los cupones:
-Solo se puede pagar una cuota, solo debe contar con un solo cupón de pago
En este punto dejamos en claro que solo se puede pagar en una cuota por cada cupón de pago emitido por ende un cupón de pago no puede tener dos cuotas en su interior.

-Una vez usado el cupón de, este no se puede reutilizar.
En esto nos referimos a que una vez emitido el cupón de pago no puede existir otro cupón con un identificador igual al emitido, ya sea para otra cuota o otro crédito.

-El monto de un cupón de pago es igual al monto de la cuota.
Esto es que el monto por el cual se genera el cupón de pago debe de ser siempre el total de la cuota, por ende, una cuota no puede tener más de un cupón de pago

-Posee una fecha de vencimiento.
En esta regla nos enfocamos en que el cupón de pago debe de ser cancelado antes de su fecha de expiración sino comenzará a aplicarse multa por el no pago.
 
### 3. Vistas de negocio
- Cupón de pago
![Cupon de pago](imagenes/image.png)
- Comprobante de pago
![Comprobante de Pago](imagenes/image-1.png)
- Multas
![Multas](imagenes/image-2.png)

### 4. Modelo Entidad-Relación en Datamodeler

En el siguiente modelo, presentamos las entidades que reconocimos a partir del análisis del caso, y de la vista del estado de cuenta, con estas entidades pensamos se abarcan todas las que se relacionan en este negocio.

Reconocemos SOCIOS(PENSIONADOS-DEPENDIENTES-INDEPENDIENTES) ya que la cooperativa diferencia entre tipo de socios.

ESTADO DE CUENTA que cuenta con código de barras dentro de sus atributos.
CRÉDITOS como una tabla ya entregada, a la cual asociamos CRÉDITO SOLICITADO-CUOTAS-CUOTAS PAGADAS, siendo cuotas todas las cuotas que se generan, según el caso.

También usamos la tabla entregada APORTES que se relacionan APORTE SOLICITADO y un cupón de pago que aporta el dinero a la inversión. 

En cuanto a las cuotas estas pueden tener multas y/o tener asociada una boleta de pago, ya que todas las cuotas están generadas, pero no todas las existentes deben estar pagadas como también puede haber algunas con multa por no pago.
![alt text](imagenes/image-3.png)

### 5. Hitos

1. Reporte de montos cancelados por conceptos de créditos en distintos periodos, los periodos pueden ser mensuales, trimestrales o semestrales.
![alt text](imagenes/image-4.png)
 
2. Reporte de deudas pendientes por conceptos de créditos, agrupadas por tipo de crédito en un periodo, los periodos pueden ser mensuales, trimestrales o semestrales.
![alt text](imagenes/image-5.png)
 
3. Reporte de cuotas por pagar para un cliente en un tipo de crédito. Cliente y crédito son valores de la condición. Se deben mostrar datos relevantes de la cuota, el crédito otorgado y el cliente.
![alt text](imagenes/image-6.png)
 
4. Reporte de Clientes Morosos. Debe contar la cantidad de cuotas impagas en los distintos tipos de crédito. Agrupar por nombre completo de cliente y nombre del crédito. Recordar que el cliente moroso es aquel que no ha pagado una cuota, cuando se le ha vencido el plazo de pago de la siguiente.
![alt text](imagenes/image-7.png)
 
5. Reporte de montos cancelados acumulados y agrupados por crédito y cliente. Este reporte requiere mostrar los datos significativos del cliente, el nombre del crédito, la cantidad de cuotas canceladas, el monto acumulado por ese pago de cuotas. Estos clientes NO SON MOROSOS
![alt text](imagenes/image-8.png)

6. Reporte de Clientes Nuevos: Se entiende por cliente nuevo, al cliente recién inscrito en el mes actual que se emite el reporte. Aún no han pagado ninguna cuota de crédito solicitado
![alt text](imagenes/image-9.png)

7. Reporte de monto cancelado por concepto de cuota de incorporación de clientes nuevos
![alt text](imagenes/image-10.png)
 
8. Reporte de montos acumulados por pago de aporte por inscripción por periodo, los periodos pueden ser mensuales, trimestrales o semestrales.
![alt text](imagenes/image-11.png)
 
9. Reporte de clientes que se encuentran al día en una fecha actual. La fecha actual es el momento en que se ejecuta la consulta. Mostrar datos relevantes del cliente y del o los créditos vigentes del cliente
![alt text](imagenes/image-12.png)

10. Reporte de clientes morosos por no pago del aporte por inscripción. Mostrar el monto adeudado moroso en la fecha actual. Recuerde que el pago de la cuota por aporte de inscripción, habilita al cliente como un cliente VÁLIDO para solicitar créditos. El cliente NO PUEDE solicitar créditos si: está moroso en el pago de algún crédito o está moroso en el pago del aporte de inscripción mensual o no a pagado la cuota de inscripción.
![alt text](imagenes/image-13.png)

### 6. Script creador de tablas y vistas

Script creador de tablas y vistas del proyecto se encuentra en la carpeta entregable hito 2.

Script creador tabla Usuario:

    CREATE USER alumnos IDENTIFIED BY "alum123"
    DEFAULT TABLESPACE "USERS"
    TEMPORARY TABLESPACE "TEMP";

    ALTER USER alumnos QUOTA UNLIMITED ON USERS;

    GRANT "CONNECT" TO alumnos;
    GRANT "RESOURCE" to alumnos;
    

### 7. Conclusión

A partir de este informe, se pudo concluir el modelo Entidad-Relación que proponemos como equipo para la solución del caso de la cooperativa Coopera.

También propusimos vistas de negocios para los temas solicitados, Multas y cupones de pago consistentes con las reglas de negocio anteriormente señaladas.

Como equipo buscamos las mejores soluciones para modelar este diseño y hacerlo lo más eficiente y menos redundante posible.



