mount:
    file.managed:
    - name: /etc/fstab
    - source: salt://states/mount/files/fstab
    - user: root
    - template: jinja

{% if not salt['file.directory_exists' ]('/usr/share/nginx/html/repo') %}
symlink:
  file.symlink:
    - name: /usr/share/nginx/html/repo
    - target: /repo
    - force: True
    - requires:
      - file: mount
{% endif %}
