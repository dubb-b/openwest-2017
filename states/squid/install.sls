squid:
  pkg.installed:
    - name: squid

  file.managed:
      - name: /etc/squid/squid.conf
      - source: salt://states/squid/files/squid.conf
      - user: root
      - template: jinja
      - listen_in:
        - service: squid

  service.running:
    - name: squid
    - enable: True
    - require:
      - pkg: squid
