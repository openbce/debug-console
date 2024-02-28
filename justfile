IMG_TAG := "openbce/debug-console"

# Build debug console
build:
	docker build -t {{IMG_TAG}} .

# Publish debug console image to 'openbce/debug-console'
publish:
	docker push {{IMG_TAG}}

# Remove unused data in docker
clean:
	docker system prune -a -f