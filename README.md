# Obligatorio Taller Servidores Linux - 2025
### by: Santiago Cardozo - Claudio Lorenzo

Este es el obligatorio de Taller de Servidores Linux 2025 como parte de la carrera Analista en Infraestructura Informática que dicta ORT Uruguay. En este documento detallaremos la creación de un script ad-hoc y dos playbooks a ejecutar en Ansible, los cuales permitirán obtener información del sistema, realizar configuraciones e instalar servicios y aplicaciones en servidores Ubuntu y CentOS, entre otras tareas.

## Dependencias para Ansible

Estos playbooks requieren tener instalado dos colleciones que se detallan en collections > requirements.yml. La primera se utiliza para instalar y configurar firewalld, mientras que la segunda se destina a instalar y configurar UFW.

```bash
collections:
  - ansible.posix
  - community.general
```

## Resultados

Con el fin de demostrar el funcionamiento tanto del script ad-hoc como de los playbooks, se puede acceder al directorio **results**, el cual contiene capturas de pantalla de los resultados obtenidos tras la ejecución de cada uno.

[Directorio results](https://github.com/sancarcast/Linux-Taller-2025/tree/main/results)

## Licencia / License

Este proyecto ha sido creado y desarrollado en base a la licencia **Creative Commons Zero v1.0 Universal.**

[Creative Commons Zero v1.0 Universal](https://github.com/sancarcast/Linux-Taller-2025/blob/main/LICENSE)
