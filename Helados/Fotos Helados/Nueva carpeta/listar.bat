@echo off
setlocal enabledelayedexpansion

:: Nombre del archivo de salida
set "salida=lista_archivos.txt"

:: Limpiar el archivo antes de escribir
echo. > "%salida%"

:: Recorrer archivos en la carpeta y excluir el script y el TXT
for /f "tokens=*" %%F in ('dir /b /a-d ^| findstr /V /I "%~nx0 %salida%"') do (
    echo %%F >> "%salida%"
)

:: Mensaje de éxito
echo Listado generado correctamente en lista_archivos.txt
pause
