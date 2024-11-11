# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo python_railway al contenedor
COPY python_railway .

# Instala cualquier dependencia necesaria (si es necesario)
RUN pip install flask

# Expone el puerto en el que la app escuchará
EXPOSE 5000

# Comando para ejecutar la aplicación (ajusta esto según tu archivo python_railway)
CMD ["python", "python_railway"]

