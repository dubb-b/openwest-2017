{% import 'params.jinja' as params %}

install_httpd:
  pkg.installed:
    - name: httpd

httpd:
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
