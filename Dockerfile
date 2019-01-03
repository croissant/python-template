FROM python:3.7-alpine

ARG USER_ID
ARG GROUP_ID

RUN addgroup -g ${GROUP_ID} developer
RUN adduser -S -G developer -u ${USER_ID} docker

RUN pip install poetry
