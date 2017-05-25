Release 0

1. What are some common HTTP status codes?
A:  404 Not Found. The most common error code you run into is a 404 error. ...
    403 Forbidden. Another common client-side response status code is 403. ...
    500 Internal Server Error. ...
    503 Service Unavailable. ...
    504 Gateway Timeout.


2. What is the difference between a GET request and a POST request? When might each be used?
A:  GET retrieves data. It allows you to request the same URL over and over harmlessly with no side effects.  

POST writes data. The data is in the body of the request instead of the URL. It may have side effects. Multiple identical write requests will result in making POST a not secure method. 

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A:  Cookies are files stored on a user's computer. They hold data specific to a particular client and website, and can be accessed either by the web server or the client computer, allowing the server to customize the page to that particular user. Each cookie is effectively a small lookup table containing pairs of (key, data) values. Writing data to a cookie is usually done when a new web page is loaded.


