@echo off
title Gaming Cafe Runner
echo ===================================================
echo Starting Backend (FastAPI) and Frontend (Vite)...
echo ===================================================

:: Start Backend in a dedicated window using the virtual environment directly
start "VanyaCafe Backend (Port 8000)" cmd /k "cd /d %~dp0backend && .\venv\Scripts\python.exe -m uvicorn app.main:app --reload --port 8000"

:: Start Frontend in a dedicated window
start "VanyaCafe Frontend (Port 5173)" cmd /k "cd /d %~dp0frontend && npm run dev"

echo Both services launched! 
echo Backend:  http://localhost:8000/docs
echo Frontend: http://localhost:5173
pause