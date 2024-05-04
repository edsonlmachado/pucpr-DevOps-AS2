# Use uma imagem base do Nginx baseada em Alpine
FROM nginx:alpine

# Define o mantenedor da imagem
LABEL maintainer="EDSON LUIZ MACHADO (RA:1112022208857)"

# Expose a porta 80
EXPOSE 80

# Instalação do curl para realizar o download do arquivo index.html
RUN apk add --no-cache curl

# Definição da URL do arquivo index.html
ARG INDEX_HTML_URL=https://edsonlmachado.github.io/DevOps-Somativa2/index.html

# Download do arquivo index.html e colocação no diretório de conteúdo do Nginx
RUN curl -o /usr/share/nginx/html/index.html $INDEX_HTML_URL

# Inicia o NGINX no container
CMD ["nginx", "-g", "daemon off;"]