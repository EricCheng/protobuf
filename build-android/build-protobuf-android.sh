export NDK_ROOT=/Users/chengpan/Documents/Softwares/android-ndk-r16b
export PREFIX=/Users/chengpan/Documents/Projects/YT/MY/protobuf_out
export PATH=/Users/chengpan/Documents/Softwares/android-ndk-r16b-t/build/arm-21-toolchain-clang/bin:$PATH
export SYSROOT=/Users/chengpan/Documents/Softwares/android-ndk-r16b-t/build/arm-21-toolchain-clang/sysroot
export CC="arm-linux-androideabi-clang --sysroot $SYSROOT"
export CXX="arm-linux-androideabi-clang++ --sysroot $SYSROOT"

../configure \
--prefix=$PREFIX \
--host=arm-linux-androideabi \
--with-sysroot="${SYSROOT}" \
--enable-shared \
--enable-cross-compile \
--with-protoc=protoc \
CFLAGS="-march=armv7-a -D__ANDROID_API__=21" \
CXXFLAGS="-frtti -fexceptions -march=armv7-a -D__ANDROID_API__=21" \
LIBS="-llog -lz -lc++_static"

make -j2

make install