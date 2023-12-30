@echo off
echo  Removing NPM packages...
npm ls -g --depth=0 | find /i "npm" > ntmpl.txt
for /f "tokens=*" %%i in (ntmpl.txt) do npm -g uninstall -y %%i
del ntmpl.txt

echo Removing completed
pause
