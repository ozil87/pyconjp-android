date1=$(shell date +%s)
build:
	docker run  -dit --name="app-apk-123" clashclanvn/app_build:0.1 bash
	docker exec -ti `docker ps -a -q` /bin/sh -c "rm -rf  /root/pyconjp-android && /root/app-build.sh"
git:
	rm -rf /opt/apk
	cd /opt/ && git clone https://github.com/ozil87/apk.git
	cd /opt/apk/ && git config --global user.name "ozil87"
	cd /opt/apk/ && git config --global user.email "nguyenhaichaudt5@gmail.com"
	cd /opt/apk/ && git remote set-url origin https://ozil87:test12333@github.com/ozil87/apk.git
	docker cp app-apk-123:/root/pyconjp-android/app/build/outputs/apk/app-production-debug.apk /opt/apk/app-production-debug-$date1.apk
	cd /opt/apk/ && git add app-production-debug-$date1.apk
	cd /opt/apk/ && git commit -m "Add new apk file"
	cd /opt/apk/ && git push -u origin master
clean:
	docker ps -a | grep "app-apk" | awk '{print $1}' | xargs docker rm -f 2>/dev/null
	docker ps -a | grep "app-apk" | awk '{print $1}' | xargs docker stop 2>/dev/null
