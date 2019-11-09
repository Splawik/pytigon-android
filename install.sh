#!/usr/bin/env bash

if [ ! -d ./python-for-android  ]; then
    git clone https://github.com/kivy/python-for-android.git
    yes | cp pytigon_android/install/Dockerfile python-for-android/Dockerfile
    cd python-for-android
    docker build --tag p4apy3 .
    mkdir home_data
    cd ..
fi

bash ./pytigon_android/install/build_android.sh
