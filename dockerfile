FROM kong
USER 0
RUN mkdir -p /kong/declarative/
COPY kong.yml /usr/local/etc/kong/kong.yml
USER kong