test_ports:
  file.managed:
    - name: /usr/local/bin/open_ports.sh
    - source: https://raw.githubusercontent.com/Ch3LL/Ch3LLScripts/master/testing/open-ports.sh
    - source_verify: False
