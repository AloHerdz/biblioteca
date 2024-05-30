import streamlit as st
import mysql.connector
import pandas as pd

# Configuración de la conexión a la base de datos
def get_connection():
    return mysql.connector.connect(
        host=st.secrets["mysql"]["host"],
        port=3306,
        user=st.secrets["mysql"]["user"],
        password=st.secrets["mysql"]["password"],
        database=st.secrets["mysql"]["database"]
    )

# Función para ejecutar la consulta y obtener los datos
def fetch_data():
    try:
        connection = get_connection()
        db_info = connection.get_server_info()
        st.write(f"Connected to MySQL server version {db_info}")

        cursor = connection.cursor()
        query = "SELECT DATABASE();"
        cursor.execute(query)
        record = cursor.fetchone()
        st.write(f"You are connected to MySQL Database: {record[0]}")  # Acceder al primer elemento de la tupla

        # Realiza la consulta adicional
        query = '''
            SELECT libro_nombre, 
                   libro_autor, 
                   libro_editorial, 
                   libro_ano_publicacion, 
                   libro_genero, 
                   libro_precio 
            FROM libros_table
            WHERE libro_genero = %s
        '''
        
        # Ejecuta la consulta usando pandas
        df = pd.read_sql(query, con=connection, params=('Ficción', ))
        return df

    except mysql.connector.Error as err:
        st.error(f"Error: {err}")
        return None

# Interfaz de usuario con Streamlit
st.title("Sistema de Gestión de Libros")

df = fetch_data()
if df is not None:
    st.write("Descripción de los datos:")
    st.write(df.describe().applymap('{:,.2f}'.format))

    genero_filter = df['libro_genero'] == 'Ficción'
    st.write("Datos filtrados por género 'Ficción':")
    st.write(df[genero_filter].describe().applymap('{:,.2f}'.format))

    st.write("Tabla completa de datos:")
    st.write(df)

else:
    st.error("Error connecting to the database.")

