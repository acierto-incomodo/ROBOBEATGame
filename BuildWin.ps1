./Clear.ps1
python -m PyInstaller --onefile --windowed --noconsole --icon=robobeat.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=robobeat.ico PlayGame.py
echo v1.5.1 > GameVersion.txt

# Copiar archivos necesarios a la carpeta dist
Copy-Item PlayGame.json -Destination dist\ -Force
if (Test-Path "robobeat.ico") { Copy-Item "robobeat.ico" -Destination "dist\PlayGame.ico" -Force }
if (Test-Path "robobeat.png") { Copy-Item "robobeat.png" -Destination "dist\PlayGame.png" -Force }

Write-Host "Compilacion y copiado completado."