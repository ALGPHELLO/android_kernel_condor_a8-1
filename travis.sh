git clone https://bitbucket.org/anupritaisno1/aarch64-linux-gnu -b linaro
export CROSS_COMPILE="/usr/bin/ccache ./aarch64-linux-gnu/bin/aarch64-linux-gnu-" ;
export ARCH=arm64;
export SUBARCH=arm64;
export KBUILD_BUILD_USER="algphello";
export KBUILD_BUILD_HOST="AOGP";
STRIP="aarch64-linux-gnu/bin/aarch64-linux-gnu-strip";
export CCOMPILE=$CROSS_COMPILE;
export CROSS_COMPILE="/usr/bin/ccache aarch64-linux-gnu-" ;
export PATH=$PATH:./aarch64-linux-gnu/bin/ ;
make haruhi_defconfig;
make -j$(nproc --all);