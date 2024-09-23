# Usar Node.js como base
FROM node:18

# Definir o diretório de trabalho
WORKDIR /app

# Copiar package.json e instalar Node.js e React (sempre instalados)
COPY package.json ./
RUN npm install react react-dom

# Copiar o script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expor a porta padrão (opcionalmente 3000 para React)
EXPOSE 3000

# Iniciar o script de entrada
CMD ["/entrypoint.sh"]
