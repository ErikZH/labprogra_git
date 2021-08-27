//Función Powershel con parametro

function Get-PuertoActivo {
  [CmdletBinding()] param([Parameter(Mandatory)] [double] $puerto, [Parameter(Mandatory)] [double] $direc)

  Test-NetConnection -Ip $direc -Port $puerto
}
