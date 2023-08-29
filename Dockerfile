FROM kylemanna/openvpn

ENV EASY_OPENVPN_CONFIGURED false

RUN mkdir "/etc/easy_openvpn"
RUN mkdir "etc/easy_openvpn/flag_files"
COPY ./scripts /etc/easy_openvpn/scripts

CMD ["/etc/easy_openvpn/scripts/start-server.sh"]
