{% import './states/params.jinja' as params %}

install_mariadb:
  pkg.installed:
    - name: mariadb-server

mariadb:
  service.running:
    - enable: True

configure_mariadb:
  file.managed:
    - name: /etc/my.cnf
    - source: {{ params.zbx_temp_path }}my.cnf
    - template: jinja
    - skip_verify: True
    - user: root
    - require:
      - service: mariadb

mysql_root_password:
  cmd.run:
    - name: mysql -u {{ params.db_root_user }} -p '{{ params.db_root_password }}' -h {{ params.zabbix_db_host }}
    - unless: mysql --user {{ params.db_root_user }} --password='{{ params.db_root_password  }}' -h {{ params.zabbix_db_host }} --execute="SELECT 1;"
    - require:
      - service: mariadb
