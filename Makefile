GIT_SHA := $(shell git rev-parse --short HEAD)
GIT_TAG := $(shell git describe --tags)

NAME =  xamaral/fluxkcfg

IMAGE_CHECK := $(shell docker images -q $(NAME):$(GIT_SHA))

docker:
	if [ "$(IMAGE_CHECK)" = "" ]; then \
		docker build . -t $(NAME):$(GIT_SHA) -t $(NAME):$(GIT_TAG) -t $(NAME):latest ; \
	fi

push: docker
	docker push $(NAME):$(GIT_SHA)
	docker push $(NAME):$(GIT_TAG)
	docker push $(NAME):latest

.PHONY: docker push
