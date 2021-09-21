docker_build:
	docker build -t johnxu1989/caddy:v2.4.5 .
docker_push:docker_build
	docker push johnxu1989/caddy:v2.4.5