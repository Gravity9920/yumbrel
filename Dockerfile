# Usamos Nginx Alpine (la versión más ligera, pesará como 5MB)
FROM nginx:alpine

# Borramos la config por defecto para evitar conflictos
RUN rm -rf /usr/share/nginx/html/*

# Copiamos TODOS los archivos de tu carpeta actual al contenedor
COPY . /usr/share/nginx/html

# Exponemos el puerto interno 80 (ojo, interno del contenedor)
EXPOSE 80

# Nginx arranca solo, no necesitas CMD