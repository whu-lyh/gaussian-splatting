pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
apt-get update
apt-get install -y libgl1 libglib2.0-0 libx11-6 git mesa-utils

# SIBR_viewers
apt install -y libglew-dev libassimp-dev libboost-all-dev libgtk-3-dev libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev libxxf86vm-dev libembree-dev
# Project setup
cd SIBR_viewers
cmake -Bbuild . -DCMAKE_BUILD_TYPE=Release # add -G Ninja to build faster
cmake --build build -j24 --target install