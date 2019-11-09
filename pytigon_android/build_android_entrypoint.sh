export ANDROIDSDK=$ANDROID_SDK_HOME
export ANDROIDNDK=$ANDROID_NDK_HOME
export ANDROID_HOME=$ANDROID_SDK_HOME
#export GRADLE_USER_HOME=/home/user/home_data/gradle
export ANDROIDAPI="27"
export NDKAPI="21"
export ANDROIDNDKVER="21"
export GRADLE_OPTS="-Xms1724m -Xmx5048m -Dorg.gradle.jvmargs='-Xms1724m -Xmx5048m'"


sudo chown user /home/user/.cache 
sudo chown user /home/user/.ccache 
sudo chown user /home/user/.git 
sudo chown user /home/user/.github 
sudo chown user /home/user/.gradle 
sudo chown user /home/user/prj 
sudo chown user /home/user/venv 

#cd $HOME/prj/pytigon/install/android/_android_src/libpytigon2/
#./gradlew build
#cd $HOME/prj/pytigon
#cp $HOME/prj/pytigon/install/android/_android_src/libpytigon2/build/intermediates/bundles/default/classes.jar $HOME/prj/pytigon/install/android/pytigon.jar


p4a apk --debug  --private $HOME/prj/pytigon_android --dist-name=pytigon  --package=cloud.pytigon --arch=armeabi-v7a \
    --name "Pytigon" --version 0.92 --bootstrap=sdl2\
    --requirements=android,sdl2,kivy,sqlite3,libffi,python3,django-bootstrap4,ldap3,django_python3_ldap,django_select2,\
tempora,cheroot,transcrypt,pyexcel_odsr,pyexcel_io,lml,chardet,django-cors-headers,jdcal,pillow,libsass,\
whitenoise,fpdf,html5lib,markdown2,wsgi_intercept,openpyxl,et_xmlfile,httpie,PyDispatcher,polib,django-appconf,portend,\
django-bulk_update,dj-database-url,dj-email-url,easy_thumbnails,django-mptt,django_polymorphic,pendulum,requests,\
more-itertools,backports.functools-lru-cache,jaraco.functools,tempora,portend,zc.lockfile,django-sql-explorer,django-mailer,\
twisted,cryptography,cffi,lxml,pytz,channels,asgiref,django-cache-url,django-allauth,daphne,netifaces,attrs,autobahn,\
git+https://github.com/Splawik/pytigon-lib.git,git+https://github.com/Splawik/pytigon.git,git+https://github.com/Splawik/pyfilesystem2.git,\
idna,txaio,sqlparse,python-dateutil,beautifulsoup4,soupsieve \
    --permission=INTERNET --permission=READ_EXTERNAL_STORAGE --permission=WRITE_EXTERNAL_STORAGE --permission=INSTALL_SHORTCUT \
    --permission=VIBRATE --permission=ACCESS_WIFI_STATE --permission=CHANGE_WIFI_STATE --permission=ACCESS_NETWORK_STATE \
    --blacklist=$HOME/prj/pytigon_android/install/blacklist.txt --whitelist=$HOME/prj/pytigon_android/install/whitelist.txt \
    --icon=$HOME/prj/pytigon_android/pytigon.png --presplash=$HOME/prj/pytigon_android/pytigon_splash.jpeg \
    --service=pytigon:pytigon_android_service.py \
    --add-jar=$HOME/prj/pytigon_android/install/pytigon.jar
bash



