import pandas as panda
ruta_archivo = './archivos/estaciones_all.csv'
ruta_archivo_excel = './archivos/estaciones_excel.xlsx'

df2 = panda.read_csv(ruta_archivo, encoding='latin-1')
df1 = panda.read_excel(ruta_archivo_excel)

print(df1, df2)