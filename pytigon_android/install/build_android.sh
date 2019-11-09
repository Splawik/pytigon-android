#docker run \
#    --interactive \
#    --tty \
#    --volume "$HOME/prj/pytigon-android/pytigon":/home/user/prj/pytigon \
#    --volume "$HOME/.local":/home/user/.local \
#    --volume "$HOME/prj/pytigon-android/python-for-android/home_data/":/home/user/home_data \
#    p4apy3 sh -c '. venv/bin/activate \
#        && cd prj/pytigon \
#        && bash build_android_entrypoint.sh'
#   --volume p4a_vol6:/home/user/prj \
#   --volume p4a_vol7:/home/user/venv \

docker run \
    --interactive \
    --tty \
    --volume "$PWD/pytigon_android":/home/user/prj/pytigon_android \
    --volume "$HOME/.local":/home/user/.local \
    --volume p4a_vol1:/home/user/.cache \
    --volume p4a_vol2:/home/user/.ccache \
    --volume p4a_vol3:/home/user/.git \
    --volume p4a_vol4:/home/user/.github \
    --volume p4a_vol5:/home/user/.gradle \
    p4apy3 sh -c '. venv/bin/activate \
        && cd /home/user/prj/pytigon_android \
        && bash build_android_entrypoint.sh'

adb uninstall cloud.pytigon
adb install $HOME/.local/share/python-for-android/dists/pytigon/build/outputs/apk/debug/pytigon-debug.apk

