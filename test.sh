uname --all
curl -s -o chromedriver.zip https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
unzip -o chromedriver.zip -d ./
rm -rf chromedriver.zip
curl -s -o chromedriver.deb https://raw.githubusercontent.com/blockies-xyz/heroku-buildpack-google-chrome/master/google-chrome-stable_current_amd64.deb
yes | apt-get -y install --reinstall ./chromedriver.deb
rm -rf chromedriver.deb
