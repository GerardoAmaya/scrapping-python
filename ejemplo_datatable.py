import pandas as pd

# Definicion de dataframe
data = { 'Pais': ['Mexico', 'Colombia', 'Peru', 'Chile', 'Argentina'], 'Capital': ['CDMX', 'Bogota', 'Lima', 'Santiago', 'Buenos Aires'], 'Poblacion': [126190788, 51152371, 33050325, 19116201, 44938712] }

df = pd.DataFrame(data, columns = ['Pais', 'Capital', 'Poblacion'])

df['Pais']

print(df)