# RETO 2 - Monitorización

## ¿Qué hay que hacer?

Queremos poder monitorizar nuestros servicios: consumos de CPU, RAM, IO de las máquinas, TPS de la base de datos, y lo que creamos que sea interesante.

Idealmente, querremos poder tener una interfaz gráfica para consultar estos datos.

Como herramienta, se ha planteado usar el stack ELK ([ElasticSearch][1], [Logstash][2] y [Kibana][3]), usando [docker-compose][4] para la orquestación de los servicios (algunos díran [coreografía][5] de servicios, lo discutimos en el Irish
pub)

## ¿Qué tareas hay?

Durante el workshop del 11/5 hemos identificado varias áreas:

### Elastic Search (ES)
Ingiere información desde Logstash, usando para ello unos índices que habrá que definir, para que Kibana pueda usarlos.

### Kibana
Configurar qué se lee de ES, y como se muestra

### Logstash
Extraerá información de los logs de cada servicio, o bien analizando los contenedores de Docker o bien leyendo directamente de volúmenes compartidos por éstos.

### Docker Compose
Se usará para levantar los contenedores, tanto de lo que ya había, como del stack ELK, y lo que creamos necesario.
No tiene por qué ser uno solo, ojo, podemos usar tantos como sean necesarios.

### Definir formato de los logs
Hay que definir el formato de los datos que va a leer Logstash, y el formato de los datos que éste le enviará a ES, necesario para saber cómo deber leerlos Kibana.

### Coordinar
Que no es tarea fácil ;-)

## ¿Cómo nos vamos a organizar?

Pues en el workshop ya se había mas o menos asignado curro, pero vamos, usamos nuestro [canal de slack][6] para cualquier duda, y vamos haciendo Pull Requests en el repositorio de git para que el coordinador las revise y las vaya metiendo
en la rama *master*, previa discusión de su contenido :-)

[1]: https://www.elastic.co/products/elasticsearch
[2]: https://www.elastic.co/products/logstash
[3]: https://www.elastic.co/products/kibana
[4]: https://docs.docker.com/compose/overview/
[5]: https://www.google.es/search?q=orchestration+vs+choreography&oq=orchestration+vs+ch&aqs=chrome.0.0j69i57j0l4.2516j0j7&client=ubuntu&sourceid=chrome&ie=UTF-8
[6]: https://retosbigdatagroup.slack.com/messages/general/
