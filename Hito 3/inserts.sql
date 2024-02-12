CREATE SEQUENCE id_resi
start with 10
increment by 10;

insert into residencias values
(id_resi.nextval, 'Valparaiso', 'Valparaiso');
insert into residencias values
(id_resi.nextval, 'Vina del Mar', 'Valparaiso');
insert into residencias values
(id_resi.nextval, 'Quilpue', 'Valparaiso');
insert into residencias values
(id_resi.nextval, 'Casablanca', 'Valparaiso');
insert into residencias values
(id_resi.nextval, 'Maipu', 'Metropolitana');
insert into residencias values
(id_resi.nextval, 'Las Condes', 'Metropolitana');
insert into residencias values
(id_resi.nextval, 'La Cisterna', 'Metropolitana');



insert into profesiones values
(1, 'Informatico');
insert into profesiones values
(2, 'Medico');
insert into profesiones values
(3, 'Mecanico');
insert into profesiones values
(4, 'Minero');
insert into profesiones values
(5, 'Electronico');
insert into profesiones values
(6, 'Electrico');
insert into profesiones values
(7, 'Policia');
insert into profesiones values
(8, 'Astronomia');



insert into tipo_de_socios values
(1, 'T. Dependiente');
insert into tipo_de_socios values
(2, 'T Independiente');
insert into tipo_de_socios values
(3, 'Pensionado');



insert into categorias values
(1, 'nuevo');
insert into categorias values
(2, 'vigente');
insert into categorias values
(3, 'moroso');



create sequence auto_id
start with 1
increment by 1;

--ID, Nombre, Materno, Paterno, Correo, Direccion, Fecha, UF, Categoria, Residencia, Tipo, Profesion
insert into socios values
(auto_id.nextval, 'Juan', 'Perez', 'Perez', 'juanpepe1907@gmail.com', 'Calle Juan Rodriguez 121', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 40, 1, 4);
insert into socios values
(auto_id.nextval, 'Bryan', 'Riveros', 'Sagardia', 'bryanrisa2007@gmail.com', 'Avenida siempreviva 110', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 30, 3, 2);
insert into socios values
(auto_id.nextval, 'Magdalena', 'Diaz', 'Poblete', 'magdalenadipo@gmail.com', 'Pasaje andromeda 568', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 50, 2, 8);
insert into socios values
(auto_id.nextval, 'Nicolas', 'Arancibia', 'Herrera', 'nicolasarhe@gmail.com', 'Avenida Bernardo Ohiggins', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 50, 2, 2);
insert into socios values
(auto_id.nextval, 'Maickol', 'Reyes', 'Vidal', 'maickolrevi@gmail.com', 'Avenida Bellavista 664', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 20, 2, 1);
insert into socios values
(auto_id.nextval, 'Andres', 'Richmon', 'Perez', 'andresripe@gmail.com', 'Calle David Pinto 526', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 70, 1, 7);
insert into socios values
(auto_id.nextval, 'Roberto', 'Mafinfla', 'Olivares', 'robertomaol@gmail.com', 'Pasaje Los Muertos 1236', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 50, 3, 5);
insert into socios values
(auto_id.nextval, 'Sebastian', 'Navarro', 'Gutierrez', 'sebastiannagu@gmail.com', 'Avenida Angamos 523', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 60, 1, 6);
insert into socios values
(auto_id.nextval, 'Ignacio', 'Cabrera', 'Pizarro', 'ignaciocapi@gmail.com', 'Calle Roberto Matta 478', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 30, 2, 1);
insert into socios values
(auto_id.nextval, 'Diego', 'Barriga', 'Bustamante', 'diegobabu@gmail.com', 'Avenida Cierra Nevada 698', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 10, 3, 5);
insert into socios values
(auto_id.nextval, 'Camilo', 'Ortega', 'Gutierrez', 'camiloorgu@gmail.com', 'Pasaje Claudio Matta 874', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 40, 1, 7);
insert into socios values
(auto_id.nextval, 'Lissandra', 'Di Marco', 'Gonzales', 'lissandradigo@gmail.com', 'Avenida Balmaceda 555', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 20, 3, 8);
insert into socios values
(auto_id.nextval, 'Elba', 'Zurita', 'Delgado', 'elbazude@gmail.com', 'Calle Jorge Montt 325', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 30, 1, 4);
insert into socios values
(auto_id.nextval, 'Marcos', 'Campos', 'Vergara', 'marcoscave@gmail.com', 'Avenida Diabulo 666', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 40, 1, 6);
insert into socios values
(auto_id.nextval, 'Mariana', 'Vega', 'Centelles', 'marianavece@gmail.com', 'Avenida Brasil 1045', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 10, 1, 4);
insert into socios values
(auto_id.nextval, 'Patricio', 'Carlos', 'Parado', 'patriciocapa@gmail.com', 'Avenida Peru 281', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 30, 2, 7);
insert into socios values
(auto_id.nextval, 'Oriana', 'Karabec', 'Kupier', 'orianakaku@gmail.com', 'Avenida CrowWolf 135', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 40, 2, 6);
insert into socios values
(auto_id.nextval, 'Isabel', 'De La Torre', 'Munoz', 'isabeldemu@gmail.com', 'Calle Tsushima 953', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 30, 2, 5);
insert into socios values
(auto_id.nextval, 'Manuel', 'Neuer', 'Contreras', 'manuelneco@gmail.com', 'Pasaje KillTreus 208', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 20, 1, 7);
insert into socios values
(auto_id.nextval, 'Pablo', 'Gavi', 'Martinez', 'pablogama@gmail.com', 'Avenida Colombia 684', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 50, 1, 6);
insert into socios values
(auto_id.nextval, 'Francisco', 'Pizarro', 'Sepulveda', 'franciscopise@gmail.com', 'Calle San Martin 1023', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 60, 1, 5);
insert into socios values
(auto_id.nextval, 'Napoleon', 'Bonaparte', 'Di Cessares', 'napoleonbodi@gmail.com', 'Avenida Libertad 566', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 1, 40, 3, 3);
insert into socios values
(auto_id.nextval, 'Diego', 'Silva', 'Flores', 'diegosifl@gmail.com', 'Pasaje Los Paltos 489', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 2, 30, 3, 4);
insert into socios values
(auto_id.nextval, 'Francisco', 'Sepulveda', 'Munoz', 'franciscosemu@gmail.com', 'Calle uno 10', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 20, 3, 1);
insert into socios values
(auto_id.nextval, 'Mel', 'Galvez', 'Galvez', 'melgaga@gmail.com', 'Avenida Lusitania 53', to_char(sysdate, 'DD/MONTH/YYYY'), 33311, 3, 70, 3, 2);




insert into aportes values
(2040870, 'Aporte Inscripcion', 'Inversion que permite ahorrar el 80% del aporte mensual de inscripcion', 0.85, 90);
insert into aportes values
(2040880, 'Cuenta de Ahorro', 'Inversion con una tasa de interes sobre el ahorro muy conveniente', 0.35, 100);
insert into aportes values
(2040861, 'Ahorro para pensionar', 'Cuenta de ahorro para la vejez. Permite aumentar la pension', 0.40, 100);



insert into creditos values
(2040845, 'Credito Hipotecario', 'Credito para la compra, amplificacion, reparacion o construccion de una', 0.5, 72);
insert into creditos values
(2040871, 'Credito de Consumo', 'Credito para financiar la compra de bienes de consumo o realizar el pago de servicios', 0.25, 48);
insert into creditos values
(2040861, 'Credito Automotriz', 'Credito para la adquisicion de vehiculo nuevo o usado', 0.4, 60);
insert into creditos values
(2040886, 'Credito de Emergencia', 'Credito para solucionar un imprevisto de salud o catastrofe', 0.35, 48);
insert into creditos values
(2040993, 'Credito por pago de arancel', 'Credito para el pago parcial o completo de una carrera', 0.8, 48);



create sequence auto_creditos
start with 1000
increment by 125;


-- id_credito_soli , fecha , cuotas, monto, id_socio, id_credito
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('01-01-2022', 'DD/MM/YYYY'), 10, 5000000 , 6, 2040845);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('01-02-2022', 'DD/MM/YYYY'), 35, 6325000, 7, 2040871);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('06-03-2022', 'DD/MM/YYYY'), 46, 5252000, 6, 2040993);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('12-03-2022', 'DD/MM/YYYY'), 60, 10250500, 9, 2040861);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('24-05-2022', 'DD/MM/YYYY'), 32, 6958000, 15, 2040886);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-05-2022', 'DD/MM/YYYY'), 3, 6159000, 10, 2040861);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('22-06-2022', 'DD/MM/YYYY'), 72, 9562500, 18, 2040845);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 60, 23650000, 12, 2040861);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('26-07-2022', 'DD/MM/YYYY'), 48, 9682000, 12, 2040993);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-08-2022', 'DD/MM/YYYY'), 48, 6782400, 25, 2040886);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('01-09-2022', 'DD/MM/YYYY'), 36, 5600000, 21, 2040861);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('15-09-2022', 'DD/MM/YYYY'), 25, 9682300, 15, 2040871);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-09-2022', 'DD/MM/YYYY'), 12, 11250635, 18, 2040993);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('01-10-2022', 'DD/MM/YYYY'), 20, 7850000, 8, 2040845);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('05-10-2022', 'DD/MM/YYYY'), 37, 4785200, 6, 2040886);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('05-10-2022', 'DD/MM/YYYY'), 64, 16982000, 25, 2040845);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('26-10-2022', 'DD/MM/YYYY'), 23, 7485500, 12, 2040993);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-11-2022', 'DD/MM/YYYY'), 16, 8974600, 9, 2040871);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-11-2022', 'DD/MM/YYYY'), 32, 10256300, 17, 2040886);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('30-11-2022', 'DD/MM/YYYY'), 64, 6875000, 21, 2040845);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('15-12-2022', 'DD/MM/YYYY'), 8, 9300000, 23, 2040886);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('16-12-2022', 'DD/MM/YYYY'), 12, 3200000, 24, 2040871);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('20-12-2022', 'DD/MM/YYYY'), 52, 6350000, 9, 2040861);
insert into creditos_solicitados values
(auto_creditos.nextval, to_date('28-12-2022', 'DD/MM/YYYY'), 47, 7685000, 10, 2040993);




create sequence id_aportes_auto
start with 500
increment by 5;


--id_aporte_soli , meses_tomados, id_socio, id_cupon, id_aporte
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 12, 9, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 36, 11, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 25, 13, 2040861);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 48, 14, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 6, 16, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 10, 18, 2040861);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 25, 19, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 69, 24, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 86, 9, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 36, 11, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 24, 13, 2040861);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 12, 14, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 56, 16, 2040861);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 32, 18, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 20, 19, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 27, 24, 2040880);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 14, 11, 2040870);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 19, 16, 2040861);
insert into aportes_solicitados(id_aport_soli, meses_tomados, id_socio, aportes_id_aporte) values
(id_aportes_auto.nextval, 46, 24, 2040880);



create sequence id_multa_auto
start with 3
increment by 3;

insert into multas values
(id_multa_auto.nextval, 300);
insert into multas values
(id_multa_auto.nextval, 500);
insert into multas values
(id_multa_auto.nextval, 2190);
insert into multas values
(id_multa_auto.nextval, 450);
insert into multas values
(id_multa_auto.nextval, 320);
insert into multas values
(id_multa_auto.nextval, 1500);
insert into multas values
(id_multa_auto.nextval, 670);
insert into multas values
(id_multa_auto.nextval, 920);
insert into multas values
(id_multa_auto.nextval, 210);
insert into multas values
(id_multa_auto.nextval, 100);



create sequence id_bol_auto
start with 5
increment by 5;


insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 20000, 300, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 20000, 670, to_date('20/08/2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 35000, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 28000, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 30000, 920, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 15000, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 46900, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 58900, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 63000, 0, to_date('20-08-2022', 'DD/MM/YYYY'));
insert into boletas values
(id_bol_auto.nextval, to_char(sysdate, 'DD/MONTH/YYYY'), 78900, 0, to_date('20-08-2022', 'DD/MM/YYYY'));



create sequence id_cuot_auto
start with 1
increment by 1;

insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('20-07-2022', 'DD/MM/YYYY'), 14285, 5715, 20000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 20300, 5, 3, 1375);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('20-07-2022', 'DD/MM/YYYY'), 14285, 5715, 20000, 'multada', 6, 1375);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('20-07-2022', 'DD/MM/YYYY'), 14285, 5715, 20000, 'multada', 12, 1375);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('20-07-2022', 'DD/MM/YYYY'), 14285, 5715, 20000, 'multada', 15, 1375);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 14285, 5715, 20000, 'pendiente', 1375);

insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'),28000 , 7000, 35000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 37190, 15, 9, 3625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 32000, 8000, 40000, 'multada', 18, 3625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 36000, 9000, 45000, 'pendiente', 3625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 40000, 10000, 50000, 'pendiente', 3625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 44000, 11000, 55000, 'pendiente', 3625);


insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 11110, 8890, 20000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 20670, 10, 21, 3000);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 13890, 11110, 25000, 'multada', 27, 3000);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 16670, 13330, 30000, 'pendiente', 3000);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 19440, 15560, 35000, 'pendiente', 3000);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 22220, 17780, 40000, 'pendiente', 3000);


insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 20000, 8000, 28000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 28920, 20, 24, 1625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_multa, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 21430, 8570, 30000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 47000, 25, 30, 1625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 22860, 9140, 32000, 'pendiente', 1625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 24290, 9710, 34000, 'pendiente', 1625);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 25720, 10280, 36000, 'pendiente', 1625);


insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 11111, 3889, 15000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 15000, 30, 3500);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 34740, 12160, 46900, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 46900, 35, 3500);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 43630, 15270, 58900, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 58900, 40, 3500);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 46670, 16330, 63000, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 63000, 45, 3500);
insert into cuotas(id_cuota, fecha_vencimiento, monto_cuota, interes, monto_a_pagar, estado_cuota, fecha_pago, monto_pago, id_boleta, id_credito_solicitado) values
(id_cuot_auto.nextval, to_date('25-07-2022', 'DD/MM/YYYY'), 58450, 20450, 78900, 'pagada', to_date('21/07/2022', 'DD/MM/YYYY'), 78900, 50, 3500);




insert into uf values
('Julio', '01', 33099.99);
insert into uf values
('Julio', '02', 33113.16);
insert into uf values
('Julio', '03', 33126.33);
insert into uf values
('Julio', '04', 33139.50);
insert into uf values
('Julio', '05', 33152.68);
insert into uf values
('Julio', '06', 33165.86);
insert into uf values
('Julio', '07', 33179.05);
insert into uf values
('Julio', '08', 33192.25);
insert into uf values
('Julio', '09', 33205.45);
insert into uf values
('Julio', '10', 33215.05);
insert into uf values
('Julio', '11', 33224.65);
insert into uf values
('Julio', '12', 33234.25);
insert into uf values
('Julio', '13', 33243.86);
insert into uf values
('Julio', '14', 33253.47);
insert into uf values
('Julio', '15', 33263.08);
insert into uf values
('Julio', '16', 33272.70);
insert into uf values
('Julio', '17', 33222.32);
insert into uf values
('Julio', '18', 33291.94);
insert into uf values
('Julio', '19', 33301.56);
insert into uf values
('Julio', '20', 33311.19);
insert into uf values
('Julio', '21', 33320.82);
insert into uf values
('Julio', '22', 33330.45);
insert into uf values
('Julio', '23', 33340.08);
insert into uf values
('Julio', '24', 33349.72);
insert into uf values
('Julio', '25', 33359.36);
insert into uf values
('Julio', '26', 33369.00);
insert into uf values
('Julio', '27', 33378.65);
insert into uf values
('Julio', '28', 33388.30);
insert into uf values
('Julio', '29', 33397.95);
insert into uf values
('Julio', '30', 33407.60);
insert into uf values
('Julio', '31', 33417.26);