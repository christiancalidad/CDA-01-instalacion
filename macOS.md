# Configuración de Mac OS

Esta guía describe el proceso de instalación y configuración de los siguientes programas en su sistema operativo:

* Anaconda 5.3 (Python)
* Lenguaje R
* RStudio


### Paso 1
Abra ``Terminal`` en **``Finder > Aplicaciones > Utilidades > Terminal``**.


### Paso 2
Ejecute el siguiente comando para descargar el script de instalación:

```
curl -O https://github.com/jdvelasq/CDA-01-instalacion/edit/master/macOS.sh
```


### Paso 3
Una vez finalice la descarga, ejecute el script con:

```
bash ./macOS.sh
```

El proceso no debe ser interrumpido.


### Paso 4
Verifique que la instalación fue realizada correctamente. Abra ``Jupyter`` desde  ``Terminal`` con:

```
jupyter notebook
```

En el menú **`New`** de Jupyter debe aparece la opción de crear notebooks Python, R y Bash.

![alt](images/macOS-jupyter-IBash.png)


