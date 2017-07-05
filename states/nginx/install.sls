include:
  - epel.install

install_nginx:
  pkg.installed:
    - name: nginx
    - require:
      - pkg: install_epel

enable_nginx:
  service.running:
    - name: nginx
    - enable: True
