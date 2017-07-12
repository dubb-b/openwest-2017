{% import 'params.jinja' as params %}

nginx_index:
  file.managed:
    - name: {{ params.nginx_root }}index.html
    - source: salt://nginx/files/index.html
    - makedirs: True

{% for artifact,keys in pillar['artifacts'].items() %}

{% set sub_dir = params.nginx_repo_root + artifact + '/' + keys['dir'] %}

{{ artifact }}_sub_dir:
  file.directory:
    - name: {{ sub_dir }}
    - makedirs: True
  {% for url in keys['urls'] %}
  {% set pkg_name = url.split('/')[-1:][0] %}

get_{{ url }}:
  cmd.run:
    - name: "wget -nc --no-check-certificate --no-cookies --header \"Cookie: oraclelicense=accept-securebackup-cookie\" {{ url }} -O {{ sub_dir }}/{{ pkg_name }}"
    - makedirs: True
    - skip_verify: True
  {% endfor %}

{% endfor %}
