install_selinux_deps:
  pkg.installed:
    - pkgs:
      - policycoreutils-python
