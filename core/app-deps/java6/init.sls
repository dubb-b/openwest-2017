{% set jdk_version = salt['pillar.get']('jdk6_version') %}
{% set os_arch = salt['grains.get']('osarch') %}

app.packages:
  pkg.installed:
    - pkgs:
      - java-1.6.0-openjdk: {{ jdk_version }}
    - ignore_epoch: True

java_1.6:
  alternatives.set:
    - name: java
    - path: /usr/lib/jvm/jre-1.6.0-openjdk.{{ os_arch }}/bin/java
