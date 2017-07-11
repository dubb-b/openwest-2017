zabbix_agent_packages:
  pkg.installed:
    - pkgs:
      - zabbix-agent


zabbix-agent:
  service.running:
    - enable: True

configure_zabbix_agent:
  file.managed:
    - name: /etc/zabbix/zabbix_agentd.conf
    - source: salt://zabbix/templates/zabbix_agentd.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - listen_in:
      - service: zabbix-agent
