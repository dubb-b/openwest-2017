{% import './states/params.jinja' as params %}

zabbix:
  file.managed:
    - name: {{ params.zbx_key_path }}
    - source: {{ params.zbx_key_url }}
    - template: jinja
    - skip_verify: True
    - user: root

  pkgrepo.managed:
    - humanname: Zabbix Official Repository - $basearch
    - baseurl: {{ params.zbx_repo_url }}
    - enabled: True
    - refresh_db: true
    - gpgcheck: 1
    - gpgkey: file://{{ params.zbx_key_path }}
    - require:
      - file: zabbix


zabbix_unsupported:
  file.managed:
    - name: {{ params.zbx_un_key_path }}
    - source: {{ params.zbx_un_key_url }}
    - template: jinja
    - skip_verify: True
    - user: root


  pkgrepo.managed:
    - humanname: Zabbix Official Repository non-supported - $basearch
    - baseurl: {{ params.zbx_un_repo_url }}
    - enabled: True
    - refresh_db: true
    - gpgcheck: 1
    - gpgkey: file://{{ params.zbx_un_key_path }}
    - require:
      - file: zabbix_unsupported
