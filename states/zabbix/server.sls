{% import './states/params.jinja' as params %}

include:
  - states.db.server
  - states.httpd.server
  - states.zabbix.repo

zabbix_server_packages:
  pkg.installed:
    - pkgs:
      - php
      - php-mbstring
      - php-pear
      - php-mysql
      - php-gd
      - php-xml
      - php-bcmath
      - zabbix-server-mysql
      - zabbix-web-mysql
      - zabbix-agent

zabbix-server:
  service.running:
    - enable: True

configure_zabbix_server:
  file.managed:
    - name: /etc/zabbix/zabbix_server.conf
    - source: {{ params.zbx_temp_path }}zabbix_server.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - watch:
      - service: zabbix-server
