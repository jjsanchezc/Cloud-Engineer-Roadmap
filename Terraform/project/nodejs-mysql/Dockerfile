# Seleccionar la imagen base
FROM node:23-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo los archivos de dependencias para aprovechar la caché
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos al contenedor
COPY . .

# Exponer puerto 3000
EXPOSE 3000

# Comando por defecto para ejecutar la aplicación
CMD ["npm", "run", "dev"]
