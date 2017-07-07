{% if grains['os_family'] == 'RedHat'%}
base:
  '*':
  - core.cent

{% if 'prod' in grains['id'] %}

prod:
  'role_type:nginx':
    - match: grain
    - states.nginx.install
    - states.mount

{% endif %}

{% endif %}
