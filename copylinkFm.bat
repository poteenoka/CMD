@ echo off
set puthStartUpLink="C:\FMMarkPosDiscount\FMMarkPosDiscount.lnk"

if not exist %puthStartUpLink% goto :exit

if exist "c:\Program Files (x86)\" (
Echo "DIR EXIST!!"
set puthLinkSource="C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*"
) else set puthLinkSource="C:\Documents and Settings\user\Главное меню\Программы\Автозагрузка\*"

echo "copy /y %puthStartUpLink% %puthLinkSource%"
copy /y %puthStartUpLink% %puthLinkSource%

:exit
exit
