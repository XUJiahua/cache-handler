docker_build:
	docker build -t john1989/caddy:v2.4.5 .
docker_push:docker_build
	docker push john1989/caddy:v2.4.5