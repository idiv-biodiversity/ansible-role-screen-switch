Ansible Role: screen-switch
=========

Switch screen on during working hours and standby otherwise.

Requirements
------------

- Ansible 2+
- Needs root privileges.
- Only tested on Raspberry Pi 2 Model B.
- Only tested with Rasbian Jessie.

Role Variables
--------------
A description of available variables is given below, along with default values (see `defaults/main.yml`):

When to switch on the screen.
```
screen_switch_on_time: '06:00:00'
```

When to switch the screen to standby.
```
screen_switch_standby_time: '21:00:00'
```

If the screen supports [CEC](https://en.wikipedia.org/wiki/Consumer_Electronics_Control).
```
screen_switch_cec_supported: true
```

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Add to `requirements.yml`:

```yml
---

- src: idiv-biodiversity.screen-switch

...
```

- Download:
```console
$ ansible-galaxy install -r requirements.yml
```

### Top-Level Playbook

Write a top-level playbook:
-
```yml
---
- name: 
  hosts: pidisplays

  roles:
    role: idiv-biodiversity.screen-switch
    tags:
      - screen-switch
    become: yes

...
```

### Role Dependency

Define the role dependency in `meta/main.yml`:

```yml
---

dependencies:
  
  - role: idiv-biodiversity.screen-switch
    tags:
      - screen-switch
    become: yes

...
```
License
-------

MIT

Author Information
------------------

This role was created in 2018 by [Dirk Sarpe][author] aka [dirks at GitHub][github], administrator at the [German Centre for Integrative Biodiversity Research (iDiv)][idiv].

[author]: https://www.idiv.de/en/groups_and_people/employees/details/62.html
[idiv]: https://www.idiv.de/
[github]: https://github.com/dirks
