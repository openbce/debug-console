IMG_TAG=openbce/debug-console

build:
	docker build -t ${IMG_TAG} .

publish:
	docker push ${IMG_TAG}