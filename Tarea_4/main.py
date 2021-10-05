#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup

def get_soup(url: str) -> BeautifulSoup:
    response = requests.get(url)
    salida = (str(BeautifulSoup(response.content, "html.parser")))
    return salida

def get_soup2(url: str) -> BeautifulSoup:
    response = requests.get(url)
    return BeautifulSoup(response.content, "html.parser")

def get_img(url):
    soup = get_soup2(url)
    images = soup.find_all("img")
    t = [{"src": image.get("src"), "alt": image.get("alt")} for image in images]
    return t



if __name__ == "__main__":
  response = get_soup('https://es.wikipedia.org/wiki/Facebook')
  with open("scrap.txt", "w") as f:
    f.write(response)

  response2 = get_img('https://es.wikipedia.org/wiki/Facebook')
  with open("imgs.txt", "w") as a:
    for row in response2:
      a.write(str(row) + '\n')