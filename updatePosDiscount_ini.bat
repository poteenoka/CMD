@ echo off
Setlocal EnableDelayedExpansion

move /Y "C:\FMMarkPosDiscount\MarketPosDiscount.ini" "C:\FMMarkPosDiscount\MarketPosDiscount.ini_old"

for /f "tokens=1,2 delims==" %%I in (c:\MarketPosSale\MarketPosSale.ini) do (

set var=%%I
set var1=!var:~0,-1!
set var2=!var:~0,-2!

if /I !var! EQU [Common] (echo [Common] >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)

if /I !var! EQU StationNumber (echo StationNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var1! EQU StationNumber (echo StationNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var2! EQU StationNumber (echo StationNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)

if /I !var! EQU ShopNumber (echo ShopNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var1! EQU ShopNumber (echo ShopNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var2! EQU ShopNumber (echo ShopNumber=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)

)

echo FoldToTray=1 >> C:\FMMarkPosDiscount\MarketPosDiscount.ini

for /f "tokens=1,2 delims==" %%I in (c:\MarketPosExchange\MarketPosExchange.ini) do (

set var=%%I
set var1=!var:~0,-1!
set var2=!var:~0,-2!

if /I !var! EQU [Exchange] (echo [Exchange] >> C:\FMMarkPosDiscount\\MarketPosDiscount.ini)

if /I !var! EQU PathImport (echo PathImport=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var1! EQU PathImport (echo PathImport=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)


if /I !var! EQU PathExport (echo PathExport=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
if /I !var1! EQU PathExport (echo PathExport=%%J >> C:\FMMarkPosDiscount\MarketPosDiscount.ini)
)
echo PathLog=c:\FMMarkPosDiscount\TMP\Log >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo ;При отсутствии связи в эту папку будут ложиться офферы, пока не появится связь >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo PathExportOffers=c:\FMMarkPosDiscount\TMP\OfferExport >> C:\FMMarkPosDiscount\MarketPosDiscount.ini

echo [HTTP] >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo HTTPS=0 >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo PORT=8086 >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo GOTOOFFER=0 >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo CONNECT_TO=http://172.29.0.168:20110/ >> C:\FMMarkPosDiscount\MarketPosDiscount.ini
echo PORT_TO=20110 >> C:\FMMarkPosDiscount\MarketPosDiscount.ini

