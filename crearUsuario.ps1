# Crear nuevo usuario
$Username = "programador"
$Password = ConvertTo-SecureString "almi12345" -AsPlainText -Force
New-LocalUser -Name $Username -Password $Password -Description "Cuenta de programador con permisos limitados"

# Agregar el usuario al grupo de Usuarios, que tiene permisos limitados
Add-LocalGroupMember -Group "Usuarios" -Member $Username

