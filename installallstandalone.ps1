######SCRIPT FOR FULL INSTALL AND CONFIGURE ON STANDALONE MACHINE#####
.\LGPO\LGPO.exe /g ".\Scripts\Security, Hardening, and Mitigations\Windows Baseline\Microsoft Edge v80\GPOs"
.\LGPO\LGPO.exe /g ".\Scripts\Security, Hardening, and Mitigations\Windows Baseline\Office365-ProPlus-Sept2019-FINAL\GPOs"
.\LGPO\LGPO.exe /g ".\Scripts\Security, Hardening, and Mitigations\Windows Baseline\Windows 10 1909 Baseline\GPOs"
.\LGPO\LGPO.exe /g ".\GPO Backup for Mass Import"

copy-item -Path .\PolicyDefinitions\* -Destination C:\Windows\PolicyDefinitions -Force -Recurse

#Package Management Scripts
#.\Scripts\"Package Management and Windows Updates"\installrsat.ps1
.\Scripts\"Package Management and Windows Updates"\chocoautomatewindowsupdates.ps1

#Security Scripts
.\Scripts\"Security, Hardening, and Mitigations"\"disable tcp timestamps.bat"
.\Scripts\"Security, Hardening, and Mitigations"\"IE Scripting Engine Memory Corruption.bat"
.\Scripts\"Security, Hardening, and Mitigations"\"specture meltdown mitigations.bat"

#Security Scripts Testing Required
#Only enable after testing in your environment
#.\Scripts\"Security, Hardening, and Mitigation"s\"SSL Hardening Registries.ps1"

#Debloating Scripts
.\Scripts\"Debloating, Optimization, and Privacy"\ultimate performance mode.ps1
.\Scripts\"Debloating, Optimization, and Privacy"\startupcleantelem.ps1
.\Scripts\"Debloating, Optimization, and Privacy"\optimizevmvirtalization.ps1
.\Scripts\"Debloating, Optimization, and Privacy"\online-Windows10Debloater.ps1

#ONLY ENABLE IF ON VM
#.\Scripts\"Debloating, Optimization, and Privacy"\"Windows_10_VDI"\1909_WindowsUpdateEnabled\Win10_1909_VDI_Optimize.ps1