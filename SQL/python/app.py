import streamlit as st
import mysql.connector
import pandas as pd

# Leer las credenciales de secrets.toml
def get_connection():
    connection = mysql.connector.connect(
        host=st.secrets["mysql"]["host"],
        user=st.secrets["mysql"]["user"],
        password=st.secrets["mysql"]["password"],
        database=st.secrets["mysql"]["database"]
    )
    return connection

# Función para ejecutar consultas
def run_query(query):
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return result

# Interfaz de usuario con Streamlit
st.title("Sistema de Gestión de Libros")

st.header("Datos de la Base de Datos")

# Ejecutar una consulta de ejemplo
query = "SELECT * FROM libros"  # Reemplaza con tu consulta
data = run_query(query)

# Mostrar los datos en una tabla
df = pd.DataFrame(data, columns=['ID', 'Nombre', 'Autor', 'Editorial', 'Año'])  # Ajusta las columnas según tu tabla
st.write(df)
