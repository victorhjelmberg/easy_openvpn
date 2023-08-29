# Important
Security:
This is an automized, but less secure version of kylemanna/openvpn
It is less secure, because passwords are handled in a unsafe manner. Therefore it is possible for a hacker to retrieve the password by getting terminal access to the server and reading the environment variable: CLIENT_PASSWORD
Therefore you should create a unique password for this openvpn server, that isn't used elsewhere.

I'm only a single person working on this, so there may be security vulnerabilities that i'm not aware of. Please let me know if you find any, and don't use this project for anything critical.

Functionality:
- It's not possible to change IP_ADDRESS without removing and starting the container from scratch. This i plan to change in future versions.
- Please reffer to easy_openvpn/docs/docker-compose.md on how to run the image

# TODO:
- Change output when building the container to be more informing
- Make it possible to use different IP_ADDRESSES on the same container
- Vulnerability scan the server

# Contribution
- Contributions are welcome.
- Contributions could be: Penetration testing the server, coding TODO's or new features, fixing grammar.