set -ex
cd ~ && 
git clone https://github.com/ozil87/pyconjp-android.git && 
cd pyconjp-android && 
git checkout master &&
./gradlew clean assembleDebug
