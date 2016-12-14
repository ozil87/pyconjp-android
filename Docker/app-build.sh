cd ~ && 
git clone https://github.com/ozil87/pyconjp-android.git && 
cd pyconjp-android && 
git checkout master &&
GOOGLE_MAP_APIKEY_DEBUG='AIzaSyCCXbN6Cz1GwBVN0-Iwtv88AxMawmx30Z0' FABRIC_APIKEY='12430140ad5b86ad46425c2d201946ea7795cb42' ./gradlew clean assembleDebug
ls
