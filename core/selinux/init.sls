disable_selinux:
  file.managed:
    - name: /etc/selinux/config
    - source: salt://core/selinux/files/config
    - template: jinja
    - skip_verify: True
    - user: root
