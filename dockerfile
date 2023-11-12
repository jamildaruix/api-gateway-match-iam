FROM kong:2.3.2

USER 0

RUN apk --no-cache add curl

COPY keycloack.sh /tmp/keycloack.sh
RUN chmod +x /tmp/keycloack.sh

COPY kong-plugin-jwt-keycloak-1.1.0-1.all.rock /tmp/kong-plugin-jwt-keycloak-1.1.0-1.all.rock
COPY kong-plugin-url-prefix-0.1.0-1.all.rock /tmp/kong-plugin-url-prefix-0.1.0-1.all.rock

RUN luarocks install /tmp/kong-plugin-jwt-keycloak-1.1.0-1.all.rock
RUN luarocks install /tmp/kong-plugin-url-prefix-0.1.0-1.all.rock

RUN mkdir -p /kong/declarative/

COPY kong.yml /usr/local/etc/kong/kong.yml
USER kong