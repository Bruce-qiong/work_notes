forfiles.exe /p "D:\log" -s -m *.trn -d -5 -c "cmd /c del @file /f"
forfiles.exe /p "D:\log" -s -m *.txt -d -5 -c "cmd /c del @file /f"  
pause