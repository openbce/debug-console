IMG_TAG=openbce/debug-console

build-docker:
	docker build -t ${IMG_TAG} .

publish-docker:
	docker push ${IMG_TAG}