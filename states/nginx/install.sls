nginx:
  pkg.installed:
    - name: nginx

  file.managed:
      - name: /etc/nginx/nginx.conf
      - source: salt://states/nginx/files/nginx.conf
      - user: root
      - template: jinja
      - listen_in:
        - service: nginx

  service.running:
    - name: nginx
    - enable: True
    - require:
      - pkg: nginx
