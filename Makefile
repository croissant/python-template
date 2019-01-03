APP_PATH=/usr/local/app
DOCKER_IMAGE_NAME=python-template

build:
	docker build . -t ${DOCKER_IMAGE_NAME} --build-arg USER_ID=`id -u` --build-arg GROUP_ID=`id -g`

test: build
	docker run --rm -v "${PWD}:${APP_PATH}" -u docker ${DOCKER_IMAGE_NAME} /bin/ash -c 'cd ${APP_PATH} && poetry install && poetry run pytest'

