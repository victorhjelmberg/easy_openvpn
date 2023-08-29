``` yml
version: '2'
services:
  openvpn:
    cap_add:
     - NET_ADMIN
    build: 
      context: ./easy_openvpn
      dockerfile: Dockerfile
    container_name: easy_openvpn
    ports:
     - "1194:1194/udp"
    restart: always
    volumes:
     - <CLIENT_CONF_DIR>:/etc/easy_openvpn/client_conf
    environment:
      - CLIENT_PASSWORD=<CLIENT_PASSWORD>
```

Place the above in a file named: docker-compose.yml
The file needs to be in the parent directory to easy_openvpn.
Change \<CLIENT_CONF_DIR\> to the directory in which you want to store your config files.
Change \<CLIENT_PASSWORD\> to the password of the client.ovpn file.