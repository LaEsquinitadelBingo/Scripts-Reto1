# Ruta de la carpeta a respaldar
$sourceFolder = "C:\Users\varel\Desktop\programador"

# Obtener la fecha y hora actual
$dateTime = Get-Date -Format "yyyyMMdd-HHmmss"

# Obtener la IP de la máquina
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -like '*Ethernet*' }).IPAddress
if (-not $ip) {
    $ip = 'localhost'
}

# Nombre del archivo de backup
$backupName = "backup_${ip}_$dateTime.zip"

# Crear el archivo de backup
Compress-Archive -Path $sourceFolder -DestinationPath $backupName

# Datos del servidor AWS
$awsServer = "tu_servidor_aws"
$awsUsername = "tu_usuario"
$remotePath = "/ruta/donde/subir/el/backup/"

# Subir el archivo a AWS usando SCP
$scpCommand = "scp -i C:/Users/varel/Desktop/Programador/Claves.pem $backupName folingo@ec2-100-26-36-46.compute-1.amazonaws.com:/home/folingo/Copias"
Invoke-Expression $scpCommand

# Verificar si el comando SCP fue exitoso
if ($LASTEXITCODE -eq 0) {
    # Borrar el archivo de backup local
    Remove-Item $backupName
} else {
    Write-Host "Error al subir el archivo. El backup no se borrará."
}

