use proyecto;

call insert_admin ("Carlos", "Vega", "Gloria", 48895659, "carlos", "vega");
call insert_admin ("Luis", "Colin", "Heredia", 55446677, "luis", "colin");

call insert_rescatista ("rescatista1", "castro", "ruiz", 77889944);
call insert_rescatista ("rescatista2", "torres", "luna", 77889955);

call insert_mascota ("firulais");
call insert_mascota ("romeo");

select * from mascota;