use proyecto;

/* Agregamos administradores */
call admin_add ("Carlos", "Vega", "Gloria", 48895659, "carlos", "vega");
call admin_add ("Luis", "Colin", "Heredia", 55446677, "luis", "colin");

/* Agregamos rescatistas */
call rescatista_add ("Juan", "castro", "ruiz", 77889944);
call rescatista_add ("Miguel", "torres", "luna", 77889955);

/* Agregamos tipos de animales */
/* Sección de perros 13 */
call tipo_add ('perro', "Bull Terrier");
call tipo_add ('perro', "Pastor Alemán");
call tipo_add ('perro', "Pastor Australiano");
call tipo_add ('perro', "Bulldog");
call tipo_add ('perro', "Chihuahua");
call tipo_add ('perro', "Labrador");
call tipo_add ('perro', "Poodle");
call tipo_add ('perro', "Boxer");
call tipo_add ('perro', "Rottweiler");
call tipo_add ('perro', "Galgo");
call tipo_add ('perro', "Pug");
call tipo_add ('perro', "Doberman");
call tipo_add ('perro', "Husky");

/* Sección de gatos 8 */
call tipo_add ('gato', "Persa");
call tipo_add ('gato', "Bengala");
call tipo_add ('gato', "Siamés");
call tipo_add ('gato', "Siberiano");
call tipo_add ('gato', "Himalayo");
call tipo_add ('gato', "Egipcio");
call tipo_add ('gato', "Munchkin");
call tipo_add ('gato', "Bombay");

/* Agregamos descripciones de mascotas */
call descripcion_add (1, "maltrato en el hogar", 4, "café", "Macho", "si");
call descripcion_add (2, "Abandono", 5, "negro", "macho", "si");
call descripcion_add (13, "encontrado en la calle x", 6, "blanco", "hembra", 'no');

/* Agregamos a la mascota */
call mascota_add (1, 1, "firulais");
call mascota_add (1, 2, "uncharted");
call mascota_add (2, 3, "solovino");

call admin_update (1, "Juan", "Perez", "Perez", 12345678, "juan", "perez");
call rescatista_update (1, "resca1", "juarez", "morales", 55667788);
call tipo_update (1, "perro", "Bull terrier");
call descripcion_update (3, 14, "extraviado", 5, "blanco con negro", "hembra", 'si');
call mascota_update (5, 1, 4, "zeus");

call admin_delete (1);
call rescatista_delete (2);
call tipo_delete (12);
call descripcion_delete (3);
call mascota_delete (9);

select * from mascota;
/* devuelve el id del último registro ingresado, independiente de la tabla */
/* select @@identity as id from rescatista; */
/* devuelve el último id ingresado en la tabla indicada (solo para auto_increment) */
select MAX(IDTIPO) as id from tipo;