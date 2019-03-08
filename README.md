# back

Si quieren conectar el proyecto a una base de datos con datos. Usuario por defecto  (user-> camix242@gmail.com pass> back123).

Si se conecta una db limpia, favor correr primero los migrates y luego el seeder CityTable.

php artisan migrate
php artisan db:seed --class=CityTable (Crea 100 ciudades aleatorias)

Luego se debe crear un usuario inicial desde /register y luego ingresar con el para verificar el CRUD.

