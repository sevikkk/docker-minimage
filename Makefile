all:
	docker build -t minimage_builder .
	docker run --rm -e DOCKER_HOST=${DOCKER_HOST} -e DOCKER_TLS_VERIFY=${DOCKER_TLS_VERIFY} -e DOCKER_CERT_PATH=${DOCKER_CERT_PATH} -v ${DOCKER_CERT_PATH}:${DOCKER_CERT_PATH} minimage_builder
