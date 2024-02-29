:: Important stuff
@echo off && cls
title GoAnimate-Website
if not exist "installed" (if not exist "notinstalled" (echo GoAnimate-Website Configuration File >> notinstalled))
::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start GoAnimate-Website ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo GoAnimate-Website is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo GoAnimate-Website is now starting...
echo Please navigate to http://localhost on your browser.
npm start
