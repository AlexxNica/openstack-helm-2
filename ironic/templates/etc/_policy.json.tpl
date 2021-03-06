{
    "admin_api": "role:admin or role:administrator",
    "public_api": "is_public_api:True",
    "show_password": "!",
    "show_instance_secrets": "!",
    "is_member": "tenant:demo or tenant:baremetal",
    "is_observer": "rule:is_member and (role:observer or role:baremetal_observer)",
    "is_admin": "rule:admin_api or (rule:is_member and role:baremetal_admin)",

    "baremetal:node:get": "rule:is_admin or rule:is_observer",
    "baremetal:node:get_boot_device": "rule:is_admin or rule:is_observer",
    "baremetal:node:get_states": "rule:is_admin or rule:is_observer",
    "baremetal:node:create": "rule:is_admin",
    "baremetal:node:delete": "rule:is_admin",
    "baremetal:node:update": "rule:is_admin",
    "baremetal:node:validate": "rule:is_admin",
    "baremetal:node:set_maintenance": "rule:is_admin",
    "baremetal:node:clear_maintenance": "rule:is_admin",
    "baremetal:node:set_boot_device": "rule:is_admin",
    "baremetal:node:set_power_state": "rule:is_admin",
    "baremetal:node:set_provision_state": "rule:is_admin",
    "baremetal:node:set_raid_state": "rule:is_admin",
    "baremetal:node:get_console": "rule:is_admin",
    "baremetal:node:set_console_state": "rule:is_admin",
    "baremetal:node:vendor_passthru": "rule:is_admin",
    "baremetal:node:ipa_heartbeat": "rule:public_api",

    "baremetal:port:get": "rule:is_admin or rule:is_observer",
    "baremetal:port:create": "rule:is_admin",
    "baremetal:port:delete": "rule:is_admin",
    "baremetal:port:update": "rule:is_admin",

    "baremetal:chassis:get": "rule:is_admin or rule:is_observer",
    "baremetal:chassis:create": "rule:is_admin",
    "baremetal:chassis:delete": "rule:is_admin",
    "baremetal:chassis:update": "rule:is_admin",

    "baremetal:driver:get": "rule:is_admin or rule:is_observer",
    "baremetal:driver:get_properties": "rule:is_admin or rule:is_observer",
    "baremetal:driver:get_raid_logical_disk_properties": "rule:is_admin or rule:is_observer",
    "baremetal:driver:vendor_passthru": "rule:is_admin",
    "baremetal:driver:ipa_lookup": "rule:public_api"
}
