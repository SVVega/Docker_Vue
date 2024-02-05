# docker buildx build --no-cache --platform linux/amd64 -t <REPO>/serverx:v0.0.1 .
# docker login -u <UNAME> -p <PASS> <REPO>
# docker push <REPO>/serverx:v0.0.1


deploy:
	docker buildx build --no-cache --platform linux/amd64 -t cr.selcloud.ru/docker-vue/serverx:v0.0.1 .
	docker login -u token -p CRgAAAAAhwtpcAsQ9DnP6qt1Tneyetlq5GAd7UC5 cr.selcloud.ru/docker-vue
	docker push cr.selcloud.ru/docker-vue/serverx:v0.0.1