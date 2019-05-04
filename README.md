# c_rest_api

A simple REST server example, written in modern C.

You will need to add code to parse the method and url from the request:

```
GET /foo/bar/baz HTTP/1.1
```

E.g., for `GET` and `/foo/bar/baz` in the example above.

## Usage:

```
gcc c_rest_api.c -o c_rest_api
./c_rest_api
```

## Output

It's a bit chatty, logging connection info while it runs:

```

Client 127.0.0.1 sent:
GET / HTTP/1.1
Host: localhost:8000
User-Agent: curl/7.54.0
Accept: */*

--> Responding with: { "Hello": "127.0.0.1" }


Client 192.168.123.3 sent:
GET / HTTP/1.1
Host: 192.168.123.143:8000
User-Agent: curl/7.52.1
Accept: */*

--> Responding with: { "Hello": "192.168.123.3" }


Client 192.168.123.3 sent:
GET /foo/bar/baz HTTP/1.1
Host: 192.168.123.143:8000
User-Agent: curl/7.52.1
Accept: */*

--> Responding with: { "Hello": "192.168.123.3" }

...
```
