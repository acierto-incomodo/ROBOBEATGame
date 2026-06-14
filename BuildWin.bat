Clear.bat
python -m PyInstaller --onefile --windowed --noconsole --icon=robobeat.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=robobeat.ico PlayGame.py
echo v1.5.1 > GameVersion.txt

:: Copiar archivos necesarios a la carpeta dist
copy /y PlayGame.json dist\
if exist robobeat.ico copy /y robobeat.ico dist\PlayGame.ico
if exist robobeat.png copy /y robobeat.png dist\PlayGame.png

echo Compilacion y copiado completado.