{% set oracle_root = 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/' %}

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
      - {{ oracle_root }}jdk-8u131-linux-arm32-vfp-hflt-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-arm64-vfp-hflt-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-i586-demos.rpm
      - {{ oracle_root }}jdk-8u131-linux-i586-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-linux-x64-demos.rpm
      - {{ oracle_root }}jdk-8u131-linux-x64-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-macosx-x86_64-demos.zip
      - {{ oracle_root }}jdk-8u131-solaris-sparcv9-demos.tar.Z
      - {{ oracle_root }}jdk-8u131-solaris-sparcv9-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-solaris-x64-demos.tar.Z
      - {{ oracle_root }}jdk-8u131-solaris-x64-demos.tar.gz
      - {{ oracle_root }}jdk-8u131-windows-i586-demos.zip
      - {{ oracle_root }}jdk-8u131-windows-x64-demos.zip
