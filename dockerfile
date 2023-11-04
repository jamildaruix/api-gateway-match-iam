FROM kong:2.3.2

USER 0

# Clone o repositório do plugin JWT Keycloak
#RUN git clone https://github.com/gbbirkisson/kong-plugin-jwt-keycloak.git /tmp/kong-plugin-jwt-keycloak

#COPY kong-plugin-jwt-keycloak-1.1.0-1.rockspec /tmp/kong-plugin-jwt-keycloak-1.1.0-1.rockspec
COPY kong-plugin-jwt-keycloak-1.1.0-1.all.rock /tmp/kong-plugin-jwt-keycloak-1.1.0-1.all.rock

RUN luarocks install /tmp/kong-plugin-jwt-keycloak-1.1.0-1.all.rock
#RUN luarocks install /tmp/kong-plugin-jwt-keycloak-1.1.0-1.rockspec
#RUN luarocks install kong-plugin-jwt-keycloak

# Copie os arquivos do plugin para o diretório de plugins do Kong
#RUN mkdir -p /usr/local/share/lua/5.1/kong/plugins/jwt-keycloak
#RUN cp -r /tmp/kong-plugin-jwt-keycloak/src/* /usr/local/share/lua/5.1/kong/plugins/jwt-keycloak/

RUN mkdir -p /kong/declarative/

COPY kong.yml /usr/local/etc/kong/kong.yml
USER kong