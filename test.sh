uname -a
ZIP_LOCATION="/tmp/chromedriver.zip"
curl -s -o $ZIP_LOCATION https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
yes | apt-get install unzip wget gconf-service libappindicator1 libasound2 libatk1.0-0 libatk-bridge2.0-0 libcairo-gobject2 libdrm2 libgbm1 libgconf-2-4 libgtk-3-0 libnspr4 libnss3 libx11-xcb1 libxcb-dri3-0 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxi6 libxinerama1 libxrandr2 libxshmfence1 libxss1 libxtst6 fonts-liberation
curl -s -o chrome.deb https://raw.githubusercontent.com/blockies-xyz/heroku-buildpack-google-chrome/master/google-chrome-stable_current_amd64.deb
yes | apt-get -y -d install --reinstall ./chrome.deb
rm -rf chrome.deb
unzip -o $ZIP_LOCATION -d ./
pwd
rm -rf $ZIP_LOCATION
