# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions
{{{ bash_instantiate_variables("var_sshd_set_maxstartups") }}}

{{{ bash_sshd_config_set(parameter="MaxStartups", value="$var_sshd_set_maxstartups") }}}
