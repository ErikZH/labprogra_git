#Funciones Menu
#----MENU----
    Function Get-MenuTarea2{
	Clear-Host
	Write-Host "=======TAREA 2========"
	Write-Host "=[A.Ver mis Teams   ]="
	Write-Host "=[B.Crear un Teams  ]="
	Write-Host "=[C.Eliminar Teams  ]="
	Write-Host "=[D.Cambiar Imagen  ]="
	Write-Host "=[E.Agregar Usuarios]="
	Write-Host "=[F.Reporte de Teams]="

	[String]$Op = Read-Host "Ingrese una Opción"
	switch ($Op){
		A {
			Op-A
		}
        
        B{
            Op-B
        }
        
        C{
            Op-C
        }

        D{
            Op-D
        }

        E{
            Op-E
        }

        F{
            Op-E
        }
	}
}

#-------Funciones Opciones---------

#Teams a los que pertenece
function Op-A {
    . .\Desktop\Tarea2\main.ps1
    Get-Team -User $datos.account.id
}

#Teams Nuevo
function Op-B {
    [CmdletBinding()] param([Parameter(Mandatory)] $nomteam, [Parameter(Mandatory)] $descripcion)
    $nomteam = Read-Host "Ingrese un nombre para el Team: "
    $descripcion = Read-Host "Ingrese una descripción: "
    . .\Desktop\Tarea2\main.ps1
    New-Team -DisplayName $nomteam -Description $descripcion -Owner $datos.account.id > $TeamInfo
}

#
function Op-C {
    [CmdletBinding()] param([Parameter(Mandatory)] $teamid)
    $teamid = Read-Host "Ingrese el ID EXACTO del Team a Borrar: "
    Remove-Team -GroupId $teamid

}

#
function Op-D {
    [CmdletBinding()] param([Parameter(Mandatory)] $usuario, [Parameter(Mandatory)] $group)
    $group = Read-Host "Ingrese el ID del grupo: "
    $usuario = Read-Host "Ingrese el Correo del Usuario a agregar: "

    Add-TeamUser -GroupId $group -User $usuario
}

#
function Op-E {
    [CmdletBinding()] param([Parameter(Mandatory)] $group, [Parameter(Mandatory)] $imgpath)
    $group = Read-Host "Ingrese el ID del grupo: "
    $imgpath = Read-Host "Ingrese el path absoluto de la imagen: "
    Set-TeamPicture -GroupId $group -ImagePath $imgpath
}

#
function Op-F {
    [CmdletBinding()] param([Parameter(Mandatory)] $nombredoc)
    $nombredoc = Read-Host "Ingrese el nombre del archivo: "
    #Crear Archivo -Name $nombredoc < Get-Team -User $datos.account.id
    #Guardar Archivo
}