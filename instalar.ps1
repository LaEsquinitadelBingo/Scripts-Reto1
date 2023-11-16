

# Instalar Visual Studio Code


# Instalar Eclipse
# Nota: El instalador de Eclipse puede requerir interacción del usuario para completar la instalación
Start-Process -FilePath "\\192.168.0.47\samba-share\folingo\Programas\VSCodeUserSetup-x64-1.84.2" -ArgumentList "/verysilent", "/install" -Wait -PassThru


Start-Process -FilePath "\\192.168.0.47\samba-share\folingo\Programas\Teams_windows_x64.msi" -ArgumentList "/verysilent", "/norestart", "/install" -Wait -PassThru


Start-Process -FilePath "\\192.168.0.47\samba-share\folingo\Programas\eclipse-inst-jre-win64.exe" -ArgumentList "/verysilent", "/norestart", "/install" -Wait -PassThru
# Instalar Microsoft Teams
#Start-Process -FilePath $teamsInstallerPath -ArgumentList "/silent", "/norestart" -Wait -PassThru


