
run: build
	-docker rm -f c_rest_api 2>/dev/null
	docker run -d -p 8000:8000 --name c_rest_api ibmosquito/c_rest_api:1.0.0

build: c_rest_api.c
	docker build -t ibmosquito/c_rest_api:1.0.0 .

clean:
	-docker rm -f c_rest_api 2>/dev/null
	-docker rmi -f ibmosquito/c_rest_api:1.0.0 2>/dev/null

check:
	curl -sS http://localhost:8000 | jq .
