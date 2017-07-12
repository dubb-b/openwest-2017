epel.package:
  pkg.installed:
    - pkgs:
      - epel-release


base.packages:
  pkg.installed:
    - pkgs:
      - net-tools
      - vim-enhanced
      - at
      - bc
      - dstat
      - htop
      - iotop
      - ltrace
      - nmap
      - rsync
      - strace
      - sysstat
      - time
      - traceroute
      - unzip
      - wget
      - jq
      - bzip2
      - firewalld
      - mailx
    - require:
      - pkg: epel.package

include:
  - core.selinux
  - core.firewalld
  - core.auth


