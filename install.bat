@echo off

echo Installing/updating bot dependencies
call npm ci --only=production --loglevel=warn >NUL

if NOT ["%errorlevel%"]==["0"] (
  pause
  exit /b %errorlevel%
)