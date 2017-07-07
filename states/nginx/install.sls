install_nginx:
  pkg.installed:
    - name: nginx

nginx_conf:
  file.managed:
      - name: /etc/nginx/nginx.conf
      - source: salt://states/nginx/files/nginx.conf
      - user: root
      - template: jinja
      - listen_in:
        - service: enable_nginx


enable_nginx:
  service.running:
    - name: nginx
    - enable: True
    - require:
      - pkg: install_nginx
