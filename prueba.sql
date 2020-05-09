use proyecto;

/* Agregamos administradores */
call admin_add ("Carlos", "Vega", "Gloria", 48895659, "carlos", "vega");
call admin_add ("Luis", "Colin", "Heredia", 55446677, "luis", "colin");

/* Agregamos rescatistas */
call rescatista_add ("rescatista1", "castro", "ruiz", 77889944);
call rescatista_add ("rescatista2", "torres", "luna", 77889955);

/* Agregamos tipos de animales */
/* Sección de perros 13 */
call tipo_add ('p', "Bull Terrier");
call tipo_add ('p', "Pastor Alemán");
call tipo_add ('p', "Pastor Australiano");
call tipo_add ('p', "Bulldog");
call tipo_add ('p', "Chihuahua");
call tipo_add ('p', "Labrador");
call tipo_add ('p', "Poodle");
call tipo_add ('p', "Boxer");
call tipo_add ('p', "Rottweiler");
call tipo_add ('p', "Galgo");
call tipo_add ('p', "Pug");
call tipo_add ('p', "Doberman");
call tipo_add ('p', "Husky");

/* Sección de gatos 8 */
call tipo_add ('g', "Persa");
call tipo_add ('g', "Bengala");
call tipo_add ('g', "Siamés");
call tipo_add ('g', "Siberiano");
call tipo_add ('g', "Himalayo");
call tipo_add ('g', "Egipcio");
call tipo_add ('g', "Munchkin");
call tipo_add ('g', "Bombay");

/* Agregamos descripciones de mascotas */
call descripcion_add (1, "maltrato en el hogar", 4, "café", "M", "s");
call descripcion_add (2, "Abandono", 5, "negro", "m", "s");
call descripcion_add (13, "encontrado en la calle x", 6, "blanco", "h", 'n');

/* Agregamos a la mascota */
call mascota_add (1, 1, "firulais");
call mascota_add (1, 2, "nala");
call mascota_add (1, 4, "solovino");

call admin_update (1, "Juan", "Perez", "Perez", 12345678, "juan", "perez");
call rescatista_update (1, "resca1", "juarez", "morales", 55667788);
call tipo_update (1, "p", "Bull terrier");
call descripcion_update (4, 14, "extraviado", 5, "blanco con negro", "h", 's');
call mascota_update (5, 1, 4, "zeus");

call admin_delete (1);
call rescatista_delete (2);
call tipo_delete (12);
call descripcion_delete (3);
call mascota_delete (9);

select * from mascota;