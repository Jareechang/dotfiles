
# install dep, get and unpack cmake tar file, configure and make
sudo apt-get install build-essential && \
wget http://www.cmake.org/files/v3.2/cmake-3.2.2.tar.gz && \
tar xf cmake-3.2.2.tar.gz && \
cd cmake-3.2.2 && \
./configure && \
make

# check for checkinstall, then install

if [ -x /usr/bin/checkinstall ]; then
    sudo apt-get install checkinstall
fi

sudo checkinstall
