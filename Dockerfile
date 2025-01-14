FROM mono:6.12
VOLUME [ "/server_data" ]

COPY ./bin /server
COPY start_server.sh /server

RUN chmod +x /server/start_server.sh /server/TerrariaServer.exe
WORKDIR /server

ENTRYPOINT [ "./start_server.sh" ]