#IMPORT MODULE
if (Get-Module -ListAvailable -Name MicrosoftTeams){
    Import-Module MicrosoftTeams

    #----CONEXIÓN---
    if ($credential -eq $null){
        $credential = Get-Credential
        Connect-MicrosoftTeams -Credential $credential > $datos
    }
    else{
        #LLAMAR MENU
        . .\Desktop\Tarea2\Funciones.ps1
        Get-MenuTarea2
    }  
} 
else {
    Write-Host "Modulo MicrosoftTeams inexistente, Iniciando Instalación"
    Import-Module MicrosoftTeams

}