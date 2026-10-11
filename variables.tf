variable "access_context_manager_service_perimeter_egress_policies" {
  description = <<EOT
Map of access_context_manager_service_perimeter_egress_policies, attributes below
Required:
    - perimeter
Optional:
    - deletion_policy
    - title
    - egress_from (block):
        - identities (optional)
        - identity_type (optional)
        - source_restriction (optional)
        - sources (optional, block):
            - access_level (optional)
            - psc_endpoint (optional, block):
                - forwarding_rule (optional)
            - resource (optional)
    - egress_to (block):
        - external_resources (optional)
        - operations (optional, block):
            - method_selectors (optional, block):
                - method (optional)
                - permission (optional)
            - service_name (optional)
        - resources (optional)
        - roles (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    perimeter       = string
    deletion_policy = optional(string)
    title           = optional(string)
    egress_from = optional(object({
      identities         = optional(list(string))
      identity_type      = optional(string)
      source_restriction = optional(string)
      sources = optional(list(object({
        access_level = optional(string)
        psc_endpoint = optional(object({
          forwarding_rule = optional(string)
        }))
        resource = optional(string)
      })))
    }))
    egress_to = optional(object({
      external_resources = optional(list(string))
      operations = optional(list(object({
        method_selectors = optional(list(object({
          method     = optional(string)
          permission = optional(string)
        })))
        service_name = optional(string)
      })))
      resources = optional(list(string))
      roles     = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

