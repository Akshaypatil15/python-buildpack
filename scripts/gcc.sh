cd ~
wget ftp://ftp.lip6.fr/pub/gcc/releases/gcc-6.2.0/gcc-6.2.0.tar.gz
tar xf gcc-6.2.0.tar.gz
cd gcc-6.2.0.tar.gz
contrib/download_prerequisites
cd ~
mkdir build && cd build
../gcc-6.2.0/configure -v --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu --prefix=/usr/local/gcc-6.2 --enable-checking=release --enable-languages=c,c++,fortran --disable-multilib --program-suffix=-6.2
make -j 8
sudo make install
export export PATH=/usr/local/gcc-6.2/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/gcc-6.2/lib64:$LD_LIBRARY_PATH
