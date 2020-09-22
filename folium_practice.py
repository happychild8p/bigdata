#!/usr/bin/python3

from urllib.parse import quote
from urllib.request import Request, urlopen
from IPython.display import display
import ssl
import json
import folium
import requests


school_addr = quote("충청남도 공주시 이인면 주봉리 250-4")
API_key = ""
url = 'https://maps.googleapis.com/maps/api/geocode/json?address='+ school_addr +'&key=' + API_key + '&language=ko&region=KR'

req = Request(url, headers={ 'X-Mashape-Key': API_key })

response = requests.get(url)
resp_json_payload = response.json()
location = list(resp_json_payload['results'][0]['geometry']['location'].values())

displayMap = folium.Map(location=location, zoom_start=15)
#folium.Marker(location = 면사무소, popup='') ==> 벡터추가하기!!
folium.Marker(location = location, popup="Our school",icon = folium.Icon(color="red", icon="info-sign")).add_to(displayMap)
folium.CircleMarker(location, radius=100,color='#3186cc', fill_color='#3186cc').add_to(displayMap)
displayMap
