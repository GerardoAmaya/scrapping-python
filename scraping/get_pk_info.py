
import pk_scraping as pk
import pandas as pd

# PRIMERA CONSULTA
# ESTE SCRIPT HACE SCRAPING EN LA PAGINA DE POKEMON Y TRAE LA INFO BASICA DE CADA CARTA

ini = 1
fin = 25
p_ecode = "cel25"
pk_dex = pd.DataFrame()

for i in range(ini, fin+1):
    data = pk.get_pk_info(p_ecode,i)
    pk_dex = pd.concat([pk_dex, data])

pk_dex.to_csv("csv/"+p_ecode+"_"+str(ini)+"-"+str(fin)+"_pokedex.csv")
print(pk_dex)
