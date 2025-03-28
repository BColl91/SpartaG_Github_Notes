# Revers Proxy Notes


#### What is a reverse proxy? Why implement one?
It is a server that sits between client devices (like web browsers) and a web server, forwarding requests from clients to the appropriate backend server. Essentially, it reverses the typical flow seen in a regular proxy server.

The reasons to implement a reverse proxy include:-
- *Load Balancing*: It can distribute incoming requests across multiple servers which prevents a single server form being overwhelmed.
- *Security*: It adds an extra layer of security by preventing direct access to abckend servers.
- *Caching*: It can cache responses from backend servers.(further reducing load on servers and also improving response times)
- *SSL Termination*: The reverse proxy can handle SSL/TLS encryption and decryption, offloading this task from the backend servers.
- *Centralised Authentication*: It can centralize user authentication and authorization, ensuring that only authenticated and authorized users can access certain resources. ***reword***
- *Compression and Optimisation*: It can compress data and perform other optimisations which improves performance.


#### How are they different to a forward proxy?
A forward proxy and a reverse proxy perform opposite roles in the network:
    A forward proxy is used by the client to access external sources (the internet). This hides the clients identidy and can be used to filter content, enforce policies, or bypass geo-blocking.

    Whereas a reverse proxy stands between the client and a server or a group of servers.The client does not know which backend server is handling the request.

#### How do they work?
Here’s how a reverse proxy works in a typical web setup:

    Client Request: A user sends a request.

    Reverse Proxy: The request first hits the reverse proxy server. The reverse proxy will then determine which backend server is most appropriate to handle the request (this can be based on load balancing algorithms, such as round-robin or least connections).

    Forward to Backend Server: The reverse proxy forwards the request to the selected backend server. The backend server processes the request, such as fetching data from a database or serving a web page.

    Backend Response: The backend server sends its response (like HTML, images, or data) back to the reverse proxy.

    Return to Client: The reverse proxy sends the response back to the client, making it appear as if the reverse proxy itself is serving the content.

This whole process ensures that the client never communicates directly with the backend servers.

![alt-img](https://res.cloudinary.com/delbwqa4s/image/upload/v1678860211/Reverse_proxy_flow_eac1d9aa0e.png)
![alt-img](https://www.indusface.com/wp-content/uploads/2023/04/Forward-proxy-vs-reverse-proxy-1.png)
<br>
<br>

## Manually implement a reverse proxy for the Sparta app (app should run on IP address only). add link to chat


You will need to change the nginx configuration

Instead of making a new location (e.g. location/examples) change the default location (i.e. location /)

Do not worry about setting nginx proxy header values

How can you make the new configuration take effect?


##  Automate the implementation of a reverse proxy in a new app deployment script (e.g. app_deploy_with_rp.sh)

Add commands to automate the config change

You will need to use the `sed` command

Please write up the steps of how to implement the reverse proxy in the same file as you research