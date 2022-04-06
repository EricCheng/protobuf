
export PREFIX=/Users/chengpan/Documents/Projects/YT/MY/protobuf_out
export NDK_ROOT=/Users/chengpan/Documents/Softwares/android-ndk-r16b

cmake \
-DCMAKE_TOOLCHAIN_FILE=/Users/chengpan/Documents/Softwares/android-ndk-r16b/build/cmake/android.toolchain.cmake \
-DANDROID_TOOLCHAIN=clang \
-Dprotobuf_BUILD_TESTS=OFF \
-Dprotobuf_BUILD_SHARED_LIBS=OFF \
-Dprotobuf_BUILD_STATIC_LIBS=ON \
-Dprotobuf_BUILD_PROTOC_BINARIES=OFF \
-DCMAKE_VERBOSE_MAKEFILE=OFF \
-Dprotobuf_BUILD_EXAMPLES=OFF \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=$PREFIX \
-DANDROID_NDK=$NDK_ROOT \
-DANDROID_ABI=arm64-v8a \
# -DANDROID_ABIS=(armeabi-v7a ) \
-DANDROID_NATIVE_API_LEVEL=14 \
-DANDROID_STL=c++_static \
-DANDROID_LINKER_FLAGS="-landroid -llog" \
-DANDROID_CPP_FEATURES="rtti exceptions" \

cmake --build .
make install -j4