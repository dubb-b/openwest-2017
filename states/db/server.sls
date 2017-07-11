{% import 'params.jinja' as params %}

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
    - name: mysqladmin --user {{ params.db_root_user }} password '{{ params.db_root_password|replace("'", "'\"'\"'") }}'
    - unless: mysql --user {{ params.db_root_user }} --password='{{ params.db_root_password|replace("'", "'\"'\"'") }}' --execute="SELECT 1;"
    - require:
      - service: mariadb
