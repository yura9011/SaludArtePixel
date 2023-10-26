@echo off
setlocal enabledelayedexpansion

:: Especifica la carpeta en la que se encuentran los archivos que deseas convertir
set "carpeta_origen=C:\pxl\MotionTrailAnimations\img"

:: Especifica el nuevo formato que deseas (en este caso, .jpg)
set "nuevo_formato=.jpg"

:: Itera a través de los archivos en la carpeta
for %%f in ("%carpeta_origen%\*.*") do (
    :: Verifica si es un archivo
    if %%~xf neq "" (
        :: Obtiene el nombre base del archivo sin extensión
        set "nombre_base=%%~nf"
        
        :: Genera el nuevo nombre de archivo con la extensión deseada
        set "nuevo_nombre=!nombre_base!!nuevo_formato!"
        
        :: Renombra el archivo al nuevo formato
        ren "%%f" "!nuevo_nombre!"
    )
)

echo Conversión completada en la carpeta %carpeta_origen%.

:: Pausa para que puedas ver el resultado
pause
