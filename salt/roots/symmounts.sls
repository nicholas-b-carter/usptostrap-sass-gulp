/usr/local/node_modules:
  file.directory:
    - user: vagrant
    - group: vagrant

/vagrant/node_modules:
  file.directory

symmount:
  mount.mounted:
    - name: /vagrant/node_modules
    - device: /usr/local/node_modules
    - fstype: None
    - opts:
      - bind
    - user: root
    - require:
       - file: /usr/local/node_modules
       - file: /vagrant/node_modules
