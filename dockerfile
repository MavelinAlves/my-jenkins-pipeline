# Usa una imagen base de Alpine
FROM alpine:latest

# Instala Bash
RUN apk add --no-cache bash

# Copia el script al contenedor
COPY pokemon.sh /pokemon.sh

# Da permisos de ejecución al script
RUN chmod +x /pokemon.sh

# Establece el comando que se ejecutará al iniciar el contenedor
CMD ["/pokemon.sh"]
