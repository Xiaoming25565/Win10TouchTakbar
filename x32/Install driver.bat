@echo off
set var=%~dp0%devcon.exe
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /V "%var%" /t REG_SZ /D "~ RUNASADMIN WIN7RTM" /F
devcon install UniSoftHid.inf "{61E08B9D-3633-416a-B153-4647FCA67D5B}\HID_DEVICE"
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /V "%var%" /F