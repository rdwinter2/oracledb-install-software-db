Oracle database 12c COTS software installation
=============

## Description

This Ansible role installs the Oracle database 12c COTS software. It does not create any databases.

## Documentation

## Requirements

## Dependencies

None

## Setup

## Testing

## Role Variables

| Name | Default Value | Description |
|------|---------------|-------------|
|

## Example Playbook

```{.yml}
- name: Exercise the role oracledb-install-software-db
  hosts: all
  become: true
  become_method: 'sudo'
  vars:
    binaries_url: http://nexus:8081/
    disable_oaa: true
    disable_olap: true
    disable_partitioning: true
    disable_rat: true
  roles:
    - { role: oracledb-install-software-db }
```

## Configuration

## Road Map

### Planned Additions

### Current Issues

### Changelog

## Discussion

## Transcluded Content

## License

MIT

## Author Information

| Author                | E-mail               |
|-----------------------|----------------------|
| Robert D. Winter, 2nd |  rdwinter2@gmail.com |

## References

* [oravirt/ansible-oracle](https://github.com/oravirt/ansible-oracle)
* [Simple Steps To Perform Opatch Maintenance With Ansible](https://blog.pythian.com/opatch-maintenance-with-ansible/)
