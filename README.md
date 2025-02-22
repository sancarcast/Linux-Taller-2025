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

## Reflexiones sobre los desafíos encontrados

Mientras trabajabamos en este proyecto, fuimos encontrando varios problemas y desafíos que detallamos a continuación.

1. En la creación del script ad-hoc, se debían integrar tareas a ser ejecutadas en diferentes equipos: Ubuntu y CentOS. Debido a que los ad-hoc no admiten invocar variables preestablecidas (por ejemplo en host_vars o group_vars), no podíamos hacer uso de los grupos centos y ubuntu definidos en inventory.ini. Finalmente, decidimos aplicar estas tareas mediante una condición 'if' que identificara en el directorio /etc/ de cada máquina, si se hallaba 'debian_version' o 'redhat-release'. De esta forma, lograríamos discriminar entre cada sistema, y así determinar qué tareas finalmente ejecutar.
2. Tras crear cada playbook e intentar ejecutarlo, siempre existía algun error de sintaxis. Es por esto que el comando "ansible-playbook --syntax-check(nombre del playbook).yml" fue de gran utilidad para identificar las líneas erróneas, modificarlas y así poder ejecutar los playbooks con éxito.

## Referencias / recursos consultados

* [community.general](https://docs.ansible.com/ansible/latest/collections/community/general/ufw_module.html)
* [ansible.posix](https://docs.ansible.com/ansible/latest/collections/ansible/posix/index.html)
* [ansible.builtin.lineinfile](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)
* [ansible.builtin.file](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html)
* [Open AI: ChatGPT](https://chatgpt.com/) Prompt: 

> **En ansible.builtin.lineinfile se documenta un ejemplo donde se agregan líneas a un archivo y se hace uso de "backup: yes". ¿De qué se trata este párametro y por qué seria relevante implementarlo?**

> El parámetro backup: yes en el módulo ansible.builtin.lineinfile le indica a Ansible que haga una copia de seguridad del archivo original antes de aplicar cualquier modificación. Esto significa que, si por alguna razón se produce un error o necesitas revertir los cambios, tendrás una versión anterior del archivo para restaurar. ¿Por qué es relevante implementarlo? Seguridad ante errores: Al contar con una copia de seguridad, puedes regresar rápidamente al estado previo si el cambio introducido causa problemas o si el archivo es crítico para la operación del sistema. Control de cambios: Permite tener un registro de modificaciones, lo que facilita el diagnóstico de errores en entornos productivos. Práctica recomendada: Especialmente en entornos de producción o cuando se modifica un archivo sensible, tener una copia de seguridad es una medida de precaución que mejora la robustez del proceso de automatización.

## Licencia / License

Este proyecto ha sido creado y desarrollado en base a la licencia **Creative Commons Zero v1.0 Universal.**

[Creative Commons Zero v1.0 Universal](https://github.com/sancarcast/Linux-Taller-2025/blob/main/LICENSE)
