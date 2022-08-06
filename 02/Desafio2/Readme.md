# Clase 3 - Desafio 2
## Permisos 

Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado Lista_Precios en su directorio /home. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo sea vulnerado porque otros empleados utilizan su equipo al finalizar su turno. Actualmente, Roxs posee una contraseña segura, pero él necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?

#### Preguntas

1. Identificar las medidas de seguridad a implementarse.
Se debe otorgar permiso de lectura y escritura solo al usuario de Roxs quien debe ser el propietario del archivo.
Además no deben compartirse las credenciales de la sesión del usuario.

2. Identificar el tipo de usuarios para quienes los permisos serán cambiados.
Primero debemos revisar los permisos del archivo a nivel de usuario y grupo

```
ls -l /home/Lista_Precios
-rw-rw-rw- 1 Roxs otrogrupo 0 ago  5 23:21 Lista_Precios
```

3. Identificar el tipo de permiso que necesita ser cambiado.
Se debe otorgar permiso solo al propietario del archivo, que en este caso es Roxs, el usuario y grupo Roxs deben ser dueños de este archivo.

```
chown Roxs:Roxs /home/Lista_precios
```

4. Verificar los permisos de acceso al archivo.

```
chmod 600 /home/Lista_precios
```

Verificamos los permisos actuales del archivo Lista_Precios y quitamos los que no sean necesarios, ya sea usando chmod 600 o utilizando ugo

```
ls -l /home/Lista_Precios
```

```
chmod u=rw,go= /home/Lista_Precios
chmod 600 /home/Lista_Precios
```