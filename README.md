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

## Noteworthy Role Variables

| Name | Default Value | Description |
|------|---------------|-------------|
| apply_cpu | none | The quartery PSU to apply |

* NOTE: Legal values for apply_cpu correspond to the MON YYYY files under the vars directory, excluding filename extension.
  * exempli gratia
    * APR 2018
    * JUL 2018
    * OCT 2018
    * JAN 2019
    * ...

## Example Playbook

```{.yml}
- name: Exercise the role oracledb-install-software-db
  hosts: all
  become: true
  become_method: 'sudo'
  vars:
    binaries_url: http://nexus:8081/
    apply_cpu: APR 2018
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

Auditing

```sql
select name, value from V$PARAMETER where name = 'audit_sys_operations';
alter system set AUDIT_SYS_OPERATIONS=TRUE scope=spfile;
shutdown
startup
// The directory assigned to the AUDIT_FILE_DEST parameter must be protected from unauthorized access and must be stored in a dedicated directory or disk partition separate from software or other application files.
AUDIT_FILE_DEST   ORACLE_BASE / admin/ ORACLE_SID/adump
alter system set AUDIT_TRAIL=OS scope=spfile;
```

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
* [Oracle Database Security](https://www.morganslibrary.org/reference/security.html)