{% set jdk_version = salt['pillar.get']('jdk8_version') %}
{% set os_arch = salt['grains.get']('osarch') %}

app.packages:
  pkg.installed:
    - pkgs:
      - java-1.8.0-openjdk: {{ jdk_version }}
    - ignore_epoch: True

java_1.8:
  alternatives.set:
    - name: java
    - path: /usr/lib/jvm/java-1.8.0-openjdk-{{ jdk_version }}.{{ os_arch }}/jre/bin/java
