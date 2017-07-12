# Setting firewalld public rules 

firewalld:
  service.running:
    - enable: True
    - reload: True

/etc/firewalld/zones/public.xml:
  file.managed:
    - name: /etc/firewalld/zones/public.xml
    - source: salt://core/firewalld/files/public.xml
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - listen_in:
      - service: firewalld


