del /q .\ReleaseWingui\*.*

echo Waiting for 10 seconds for delete
timeout /t 10
echo Resuming execution

xcopy ..\..\..\ImgArchiveGUI\Release .\ReleaseWingui