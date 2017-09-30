run:
	go run *.go

build:
	go build -o hello

docker-build:
	GOOS=linux GOARCH=amd64 go build -o hello
	docker build -t smendiratta/helloworld-go .

docker-run:
	docker run -it -p 8080:80 smendiratta/helloworld-go

docker-push:
	docker push smendiratta/helloworld-go
