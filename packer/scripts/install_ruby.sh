gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io -o rvm.sh
cat rvm.sh | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby --default
gem install bundler -V

