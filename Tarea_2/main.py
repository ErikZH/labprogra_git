#Erik Gabriel Zúñiga Hernández

#Import Modulos
if __name__ == '__main__':
  import requests
  import json
  url = 'https://randomuser.me/api/'
  respuesta = requests.get(url)

  if respuesta.status_code == 200:
    print ('Conexión Establecida correctamente')
    print ('---PERFIL ALEATORIO---' '\n')
    page = requests.get(url)
    RES = json.loads(page.content)
    print (RES)


  else:
    print ('Pagina sin conexión!!')