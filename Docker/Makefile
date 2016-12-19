date=$(shell date +%s)
apk: Dockerfile app-build.sh
	docker build -t app-build:0.1 .
	docker run --name="app-$(date)" app-build:0.1
	docker exec -it `docker ps | grep app | awk '{print $1}' ` sh /root/app-build.sh
	docker cp app-$(date):/root/pyconjp-android/app/build/outputs/apk/app-production-debug.apk .
clean:
	docker ps -a | grep "app" | awk '{print $1}' | xargs docker rm
