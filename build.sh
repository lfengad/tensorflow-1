export ROCM_INSTALL_DIR=/opt/dtk-21.04
export PYTHON_EXE=/home/fl237079/shenshi/env/bin/python
export BUILDDIR=/home/fl237079/tf_build
  
ROCM_PATH=$ROCM_INSTALL_DIR TF_NEED_ROCM=1 PYTHON_BIN_PATH=${PYTHON_EXE} ./configure

bazel  --output_user_root=/home/fl237079   build -j 20 --experimental_repository_cache=${BUILDDIR}/v1 --config=opt --config=rocm --copt="-I/opt/rh/devtoolset-7/root/usr/include/c++/7" --copt="-L/opt/rh/devtoolset-7/root/usr/lib64" --copt="-static-libstdc++" --copt="-L/opt/dtk-21.04/lib64" //tensorflow/tools/pip_package:build_pip_package --verbose_failures
#bazel-bin/tensorflow/tools/pip_package/build_pip_package $TF_PKG_LOC
bazel  --output_user_root=/home/fl237079   build -j 20 --experimental_repository_cache=${BUILDDIR}/v1 --config=opt --config=rocm --copt="-I/opt/rh/devtoolset-7/root/usr/include/c++/7" --copt="-L/opt/rh/devtoolset-7/root/usr/lib64" --copt="-static-libstdc++" --copt="-L/opt/dtk-21.04/lib64"  //tensorflow:tensorflow_cc --verbose_failures
bazel  --output_user_root=/home/fl237079   build -j 20 --experimental_repository_cache=${BUILDDIR}/v1 --config=opt --config=rocm --copt="-I/opt/rh/devtoolset-7/root/usr/include/c++/7" --copt="-L/opt/rh/devtoolset-7/root/usr/lib64" --copt="-static-libstdc++" --copt="-L/opt/dtk-21.04/lib64"  //tensorflow:install_headers --verbose_failures
