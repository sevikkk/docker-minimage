all:
	docker build -t minimage_builder .
	docker run --rm -v /var/run/docker.sock:/var/run/docker.sock minimage_builder
