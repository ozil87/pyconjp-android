date = default
date1=$(shell date +%s)
#NAME = clashclanvn/app_build
#VERSION = 0.1
build:
        docker build --rm -t app-apk:0.1 .
        docker run  -dit --name="app-$(date)" app-apk:0.1 bash
#       docker exec /bin/sh -c "rm -rf /root/pyconjp-android && /root/app-build.sh "
        docker exec -ti `docker ps -a -q` /bin/sh -c "rm -rf  /root/pyconjp-android && /root/app-build.sh"
git:
        rm -rf /opt/apk
        cd /opt/ && git clone https://github.com/ozil87/apk.git
        cd /opt/apk/ && git config --global user.name "ozil87"
        cd /opt/apk/ && git config --global user.email "nguyenhaichaudt5@gmail.com"
        cd /opt/apk/ && git remote set-url origin https://ozil87:test12333@github.com/ozil87/apk.git
        docker cp app-$(date):/root/pyconjp-android/app/build/outputs/apk/app-production-debug.apk /opt/apk/app-production-debug-$(date1).apk
        cd /opt/apk/ && git add app-production-debug-$(date1).apk
#       cd /opt/apk/ && git pull --rebase origin master
        cd /opt/apk/ && git commit -m "Add new apk file"
        cd /opt/apk/ && git push -u origin master

clean:
        docker ps -a | grep "app-apk" | awk '{print $1}' | xargs docker rm -f
