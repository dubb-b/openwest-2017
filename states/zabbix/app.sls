{% import 'params.jinja' as params %}

zabbix_server_packages:
  pkg.installed:
    - pkgs:
      - httpd
      - php
      - php-mbstring
      - php-pear
      - php-mysql
      - php-gd
      - php-xml
      - php-bcmath
      - mariadb-server
      - zabbix-server-mysql
      - zabbix-web-mysql
      - zabbix-agent


zabbix-server:
  service.running:
    - enable: True

httpd:
  service.running:
    - enable: True

mariadb:
  service.running:
    - enable: True


configure_apache:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: {{ params.zbx_temp_path }}httpd.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - require:
      - service: httpd


configure_mariadb:
  file.managed:
    - name: /etc/my.cnf
    - source: {{ params.zbx_temp_path }}my.cnf
    - template: jinja
    - skip_verify: True
    - user: root
    - require:
      - service: mariadb


configure_zabbix_server:
  file.managed:
    - name: /etc/zabbix/zabbix_server.conf
    - source: {{ params.zbx_temp_path }}zabbix_server.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - watch:
      - service: zabbix-server
