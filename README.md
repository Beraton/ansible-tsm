# Ansible playbooks for IBM Spectrum Protect

Playbooks included in this repo allow to install and configure:
- IBM Spectrum Protect Client
- IBM Spectrum Protect for Virtual Environments (Hyper-V)
- IBM Spectrum Protect for Microsoft SQL

## Configuration

The 2 most important configuration files are `inventory` file and `host_vars/vars` file

The first one contains host/VM connection parameters. Each host/VM should be defined based on it's role which could be:
- tsm_client (installs IBM SP Client)
- tsm_ms_sql (installs IBM SP for MSSQL)
- cluster_nodes_win (installs IBM SP for Hyper-V)
- cluster_nodes_linux (unsupported yet)
To use the script copy contents of `inventory.example`, define your own hosts, change filename to `inventory` and place it in the main directory

The second one defines all the variables and credentials that are used during playbook execution. Please refer to the comments included in this file for explaination.

**Important note**: When registering new client node or cluster node you need to create a new node on the IBM SP Server prior to executing playbook. Node name has to match the name defined in `host_vars/vars` - otherwise playbook will fail to authenticate to the server and exchange certificates.
