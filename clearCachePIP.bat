echo Removing PIP packages...
pip freeze > pipfreeze.txt
for /f "tokens=*" %%i in (pipfreeze.txt) do pip uninstall -y %%i
del pipfreeze.txt

echo Removing completed
pause
