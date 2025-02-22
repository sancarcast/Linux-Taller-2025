###Preguntas sobre Ansible

#####1. ¿Qué es Ansible y por qué es "sin agente" (agentless)?

> Es una herramienta que permite automatizar configuraciones de diferentes sistemas, asi como gestionar infraestructura y hacer deploy de aplicaciones. Es sin agente debido a que no se requiere instalar nada en los equipos que buscamos administrar.

#####2. Explica la diferencia entre un comando ad-hoc y un playbook.

> La diferencia está en que un comando ad-hoc se trata de una ejecución puntual e independiente de una o más tareas simples, mientras que en un playbook se definen un conjunto de tareas dentro de un mismo .yml o .json. Estas tienden a ser más complejas y admite el uso de variables pre-definidas, cosa que no es posible en los ad-hoc, ya que hay que definiarlas manualmente cada vez que se ejecuta el comando.

#####3. ¿Qué es la idempotencia y por qué es importante en Ansible?  

> La idempotencia se trata de la ejecución de una misma tarea varias veces, teniendo el mismo resultado por consecuencia. Esto es importante en Ansible porque así se evitan cambios innecesarios en el sistema y se es eficiente, ya que no hay que repetir acciones cuando lo que se busca realizar ya fue realizado anteriormente. 

#####4. ¿Cómo funcionan los handlers y cuándo deberías usarlos? 

> Los handlers permiten ejecutar acciones al final del playbook, mediante notificaciones de otras tareas. Es decir, cuando una tarea se ejecuta, tiene la posibilidad de notificar al handler para que ejecute otra tarea específica al finalizar el playbook. Esa misma notificación la puede hacer más de una tarea, lo que evita realizarla múltiples veces y  en su lugar ejecutarlo una sola vez al final del playbook. Su uso es importante siempre que se busca garantizar que los cambios realizados en las tareas listadas se apliquen correctamente, por ejemplo reiniciar un servicio en específico.

#####5. ¿Cómo verificas errores de sintaxis en un playbook de Ansible?

> Para verificar errores de sintaxis en un playbook antes de ejecutarlo, podemos usar el comando "ansible-playbook --syntax-check(nombre del playbook).yml". Esto nos indicará si hemos escrito correctamente el .yml o el .json y en qué línea y columna se halla el o los errores.
