git clone --depth=1 https://github.com/Itseez/opencv.git
cd opencv
mkdir build
cd build
# 以下のパスはpythonの環境に合わせる。
cmake -DBUILD_opencv_python3=YES -DBUILD_opencv_python2=NO -DINSTALL_PYTHON_EXAMPLES=YES -DPYTHON3_EXECUTABLE=/usr/local/opt/pyenv/versions/stand_app3.5.0/bin/python -DPYTHON3_INCLUDE_DIR=/usr/local/opt/pyenv/versions/3.5.0/Python.framework/Versions/3.5/include/python3.5m/ -DPYTHON3_LIBRARY=/usr/local/opt/pyenv/versions/3.5.0/Python.framework/Versions/3.5/lib/libpython3.5.dylib -DPYTHON3_NUMPY_INCLUDE_DIRS=/usr/local/opt/pyenv/versions/stand_app3.5.0/lib/python3.5/site-packages/numpy/core/include/ -DPYTHON3_PACKAGES_PATH=/usr/local/opt/pyenv/versions/stand_app3.5.0/lib/python3.5/site-packages/ ..
make -j8
make install