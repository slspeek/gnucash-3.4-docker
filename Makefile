IMAGE_NAME=slspeek/gnucash-3.4

build:
	docker buildx build -t $(IMAGE_NAME) .

test: build
	./gnucash-3.4.sh
	
.ONESHELL:
push: build
	docker login
	docker push $(IMAGE_NAME)
	