# -*- coding: utf-8 -*-
###-----------------------------------------------------------------------------
#  Script Name: Ejemplo2
#  Description:
#  Created By:  Ivan Moran
#  Date:    01-Mar-2018
###-----------------------------------------------------------------------------

# 1) LEER OBJETOS DESDE CUALQUIER FUENTE DE DATOS
# --------------------------------------------------------------
# Leeremos los archivos desde 3 fuentes CSV, Excel, JSON desde Web
# --------------------------------------------------------------

# Paquetes utilizados
import pandas as pd
#from geopandas import *

##########################################################################
# 1) importar xls utilizando pandas
# El xls lo volcamos directamente a un Base de datos

server   = "127.0.0.1"
database = "python"
user     = "root"
password = "pass1234"

# leer archivo csv
df = pd.read_csv('./estaciones_all.csv', dtype=object, encoding='latin-1')
df.sort_values(by='index')
#df.head(10)

# Importar data a base de datos
from sqlalchemy import create_engine

engine = create_engine(f"mysql+pymysql://{user}:{password}@{server}/python")
df.to_sql(name='estaciones', con=engine, if_exists='append', index=False)

##########################################################################
# 2) Leer datos desde Mysql
# Open database connection
from sqlalchemy import create_engine
server   = "goes-capacitaciones.cnysi0ldpq0y.ca-central-1.rds.amazonaws.com"
database = "goes_cap"
user     = "cap_user"
password = "goes.2022"
#engine = create_engine("mysql://user:password@server/database")
engine = create_engine(f"mysql+pymysql://{user}:{password}@{server}/"+database)

# execute SQL query using execute() method.
sql = "SELECT  * FROM usuarios u"
df4 = pd.read_sql(sql, engine)
print (df4.head(10))

##########################################################################

##########################################################################
# 3) Leer datos desde PosgreSQL
# Open database connection
import psycopg2
server   = "34.118.162.56"
database = "postgres"
user     = "postgres"
password = "5/y0643-E@2`,Ckg"

# Conectar a una base de datos existente
#conn = psycopg2.connect("dbname=dbname host=server_host user=db_user password= db_password")
conn = psycopg2.connect("dbname="+database+" host="+server+" user="+user+" password="+password)
cur = conn.cursor()
cur.execute("SELECT * FROM public.docentes_minec")
df5= pd.DataFrame(cur.fetchall())
df5.columns = [desc[0] for desc in cur.description]
print (df5.head())
# print(df)
# Utilizamos commit cuando realizamos las opreaciones INSERT, UPDATE y DELETE para aplicar cambios.
# conn.commit()
# Cerramos la conexion a la base
conn.close ()
#########################################################################


