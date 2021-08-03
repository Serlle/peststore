## Bienvenido al repositorio de la API PetStore de Serlle😼
#### Introducción:
PetStore API es una tienda de mascotas en la cual puedes crear y obtener información de una o de todas las mascotas que añadas a la base de datos.
Esta API está desarrollada por el candidato y Ingeniero Serlle de Jesús Rosales Torres.


**Instalación y levantamiento:**


* Debes de tener Instalado Ruby 2.7.2 y Ruby on Rails 6.1.4 para no tener ningún inconveniente.
* Una vez hayas instalado ruby y ruby on rails posteriormente pasas a clonar el proyecto en mí Git personal (pude dar click [Aquí](https://github.com/Serlle/peststore "Aquí")), esto te creará una carpeta llamada "petstore".


* Cuando ya tengas esta carpeta es necesario agregar las gemas que se necesitan en la API para la pruebas, los linter, entre otras cosas, lo cual, yo instalo todas esas gemas con el comando:


	`bundle install`


* Después de clonar y instalar las gemas, viene la parte del levantamiento del servidor, con el comando:


	`bin/rails server`


* Una vez levantado el servidor, en la terminal te arrojará una URL ("http://[::1]:3000") la cual la pegaras en una plataforma de desarrollo de API de tu agrado, en mi caso utilizare Postman.
* Antes de entrar a esa URL necesitas añadir 2 rutas extras, una es la de la versión y la otra la de accionador index que es "pets", es decir quedaría de la siguiente manera:


	`http://[::1]:3000/v1/pets`


* Ya obteniendo esa dirección puedes ponerlo en la plataforma postman y puede empezar a realizar cambios en la API ya sea para obtener todos los datos, crear datos o obtener datos de una mascota especifica.


> NOTA: Una de las cosas que se tiene que tener en cuenta es de que la base de datos está vacía así que para poder observar toda la lista de mascotas primero tienes que crearla, como también, la actividad te mencionaba usar limites y un paginado, esas consultas se usan en con la URL y nombre de la consulta es decir: para las dos consultas http://[::1]:3000/v1/pets?limit=5&cursor=2, para una sola consulta: http://[::1]:3000/v1/pets?limit=5


**Linter y Pruebas**


* En este proyecto las pruebas se realizaron con una gema llamada RSpac y Factory. Estas gemas te permiten realizar pruebas y crear objetos ficticios a la base de datos. Estas pruebas se encuentran en la carpeta "app/spec"


* En la parte de "app/spec/request" se encontrará la prueba "pets_spec.rb" en donde se observa 4 diferentes pruebas, las cuales son para ver si se crearon y si hay mascotas en la base de datos, echa un vistazo ;)

* Para poder correr las pruebas se necesita correr en la terminal el comando:

	`bundle exe rspec spec/request/pets_spec.rb`

El cual se supone que te mostraría:

	`Finished in 0.06626 seconds (files took 1.08 seconds to load)
4 examples, 0 failures`

Indicando que las pruebas pasan.

* Para la parte del linter, si quieres observar que no hay lineas o código no requerido yo utilizaba el comando:

	`bundle exec standardrb`

El cual te mostrará:

	`42 files inspected, no offenses detected`


------------


Esto sería todo, cualquier duda o pregunta no dude en comunicarse conmigo al correo serlle.rosales96@gmail.com o al número de teléfono 3131135108, quedo a su disposición, saludos y muchas gracias! Que tenga buen día :)
