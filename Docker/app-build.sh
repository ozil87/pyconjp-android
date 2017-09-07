set -ex
cd ~ && 
git clone https://github.com/ozil87/pyconjp-android.git && 
cd pyconjp-android && 
git checkout master &&
./gradlew clean assembleDebug
date1=$(date +%Y-%m-%d-%H-%M-%S)
cd /opt/ && git clone https://github.com/ozil87/apk.git
cd /opt/apk/ && git config --global user.name "ozil87"
cd /opt/apk/ && git config --global user.email "nguyenhaichaudt5@gmail.com"
cd /opt/apk/ && git remote set-url origin https://ozil87:test12333@github.com/ozil87/apk.git
cp /root/pyconjp-android/app/build/outputs/apk/app-production-debug.apk /opt/apk/app-production-debug-"$date1".apk
cd /opt/apk/ && git add app-production-debug-"$date1".apk
cd /opt/apk/ && git commit -m "Add new apk file"
cd /opt/apk/ && git push -u origin master
