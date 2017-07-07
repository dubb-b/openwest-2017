mount:
    file.managed:
    - name: /etc/fstab
    - source: salt://states/mount/files/fstab
    - user: root
    - template: jinja

symlink:
  file.symlink:
    - name: /usr/share/nginx/html/repo
    - target: /repo
    - force: True
    - requires:
      - file: mount
