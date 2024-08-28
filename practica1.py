
import pandas as pd

ruta_archivo = './archivos/data_frame.xlsx'

dt = pd.read_excel(ruta_archivo)
print(dt)