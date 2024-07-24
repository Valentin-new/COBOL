# Usa una imagen base de Ubuntu
FROM ubuntu:latest

# Instala los paquetes necesarios
RUN apt-get update && apt-get install -y \
    gnucobol \
    python3 \
    sqlite3 \
    wget

# Crea un directorio de trabajo
WORKDIR /app

# Copia los archivos COBOL, el script Python y el script de configuración a la imagen
COPY crud_cobol.cob /app
COPY crud_db.py /app
COPY setup_db.sh /app

# Establece permisos de ejecución para el script de configuración de la base de datos
RUN chmod +x /app/setup_db.sh

# Ejecuta el script de configuración de la base de datos
RUN /app/setup_db.sh

# Compila el programa COBOL
RUN cobc -x -o crud_cobol crud_cobol.cob

# Define el comando por defecto para ejecutar el programa COBOL
CMD ["./crud_cobol"]
