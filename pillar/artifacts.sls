{% set oracle_root = 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/' %}
{% set oracle_root2 = 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11-demos/d54c1d3a095b4ff2b6607d096fa80163/' %}
{% set studio_root = 'https://dl.google.com/dl/android/studio/install/2.3.3.0/' %}
{% set studio_root2 = 'https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/' %}

artifacts:
  android_sdk:
    dir: sdk
    urls:
      - {{ oracle_root }}jdk-8u131-linux-arm32-vfp-hflt.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-arm64-vfp-hflt.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-i586.rpm
      - {{ oracle_root }}jdk-8u131-linux-i586.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-x64.rpm
      - {{ oracle_root }}jdk-8u131-linux-x64.tar.gz
      - {{ oracle_root }}jdk-8u131-solaris-x64.tar.Z
      - {{ oracle_root }}jdk-8u131-solaris-x64.tar.gz
      - {{ oracle_root }}jdk-8u131-windows-i586.exe
      - {{ oracle_root }}jdk-8u131-windows-x64.exe
      - {{ oracle_root2 }}jdk-8u131-linux-arm32-vfp-hflt-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-linux-arm64-vfp-hflt-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-linux-i586-demos.rpm
      - {{ oracle_root2 }}jdk-8u131-linux-i586-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-linux-x64-demos.rpm
      - {{ oracle_root2 }}jdk-8u131-linux-x64-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-macosx-x86_64-demos.zip
      - {{ oracle_root2 }}jdk-8u131-solaris-sparcv9-demos.tar.Z
      - {{ oracle_root2 }}jdk-8u131-solaris-sparcv9-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-solaris-x64-demos.tar.Z
      - {{ oracle_root2 }}jdk-8u131-solaris-x64-demos.tar.gz
      - {{ oracle_root2 }}jdk-8u131-windows-i586-demos.zip
      - {{ oracle_root2 }}jdk-8u131-windows-x64-demos.zip
  android_studio:
    dir: studio
    urls:
      - {{ studio_root }}android-studio-bundle-162.4069837-windows.exe
      - {{ studio_root }}android-studio-ide-162.4069837-windows.exe
      - {{ studio_root }}android-studio-ide-162.4069837-mac.dmg
      - {{ studio_root2 }}android-studio-ide-162.4069837-windows.zip
      - {{ studio_root2 }}android-studio-ide-162.4069837-windows32.zip
      - {{ studio_root2 }}android-studio-ide-162.4069837-linux.zip
  javascript:
    dir: battmanz_examples
    urls:
      - https://github.com/battmanz/functional-javascript-examples/archive/master.zip
  mongodb:
    dir: mongodb_atlas
    urls:
      - http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
      - https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.6.tgz
      - https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.4.6.tgz
      - https://fastdl.mongodb.org/osx/mongodb-osx-ssl-x86_64-3.4.6.tgz
