# RETO 2 - Resumen sesión en BlueTab

## Objetivos

Empezamos haciendo un breve repaso a los objetivos de la actividad. 
En general, que los participantes adquieran un conocimiento a alto nivel de los principios de funcionamiento de las herramientas para problemas "Big Data".
Además se pretende que los participantes mejoren su capacidad de extender lo que saben a otros miembros de la empresa.

## Charla Docker

Iñigo y Juan darán una charla de Docker, a discutir con JAZ los detalles.
No quedó muy claro en la sesión si Iñigo nos tomaba el pelo con lo de su timidez y el que escribe (Germán) aprovechó con malas artes para enmarronarle.
A Juan se le veía algo más dispuesto.

## Charlas de 5 minutos cada uno de lo que ha hecho para el Reto1

Cada uno de los participantes nos cuenta como ha solucionado el Reto.
A destacar:
- Juan nos ha contado sobre sus intentos, al parecer no demasiado satisfactorios, de poner ZeroMQ como gestor de una cola para deacoplar el servidor web de la inserción en la base de datos. Suena muy bien y encaja con una de las ideas para el RETO 3, así que volveremos sobre el tema.
- Iñigo parece haber obtenido unos resultados de rendimiento buenísimos con el "clusterize" de Node JS. Va a ser una de las cosas que probemos en el RETO2.
 
En general, parece que el mayor problema de la solución planteada incialmente es la creación de una conexión y una transacción por cada petición HTTP, aunque eso también tiene ventajas.
Sin mencionar el término, hablamos de las restriciones del famoso CAP ... un tema que necesariamente volverá a salir.

## RETO2

Se planteó una elección entre ir a un reto de procesamiento o a uno de métricas y por aplastante mayoría (unanimidad?) se eligió métricas.
Así que vamos a montar un docker-compose que incluya el MySQL, el Tsung, el servidor Node JS o el servidor Python y un ELK.
Del ELK habla un poco Juan en el README.md, así que no me extiendo aquí.

## SDN

Iñigo y Leticia no saben ésto, porque creo que lo hablé durante las cervezas.
Hay un meetup de SDN el día 25 de Mayo.
Me gustaría ir, y que vinieseis los que estéis interesados, pero nos coincide con la sesión.
Podríamos cambiarla, o podríamos intentar seguir el progreso offline y plantear el RETO3 offline.
De momento, mantengo la convocatoría de la sesión.
Si las cosas van muy bien y tenemos algo que da el pego antes del miércoles, preparo una buena descripción del RETO3 y nos lo pensamos.
Pero si alguien tiene una preferencia fuerte por vernos el miércoles 25 en BlueTab pase lo que pase, no me parece mal.
