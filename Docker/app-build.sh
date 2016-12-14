cd ~ && 
git clone https://github.com/ozil87/pyconjp-android.git && 
cd pyconjp-android && 
git checkout master &&
GOOGLE_MAP_APIKEY_DEBUG='AIzaSyCCXbN6Cz1GwBVN0-Iwtv88AxMawmx30Z0' FABRIC_APIKEY='' ./gradlew clean assembleDebug
