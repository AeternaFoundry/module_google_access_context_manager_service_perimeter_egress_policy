resource "google_access_context_manager_service_perimeter_egress_policy" "access_context_manager_service_perimeter_egress_policies" {
  for_each = var.access_context_manager_service_perimeter_egress_policies

  perimeter       = each.value.perimeter
  deletion_policy = each.value.deletion_policy
  title           = each.value.title

  dynamic "egress_from" {
    for_each = each.value.egress_from != null ? [each.value.egress_from] : []
    content {
      identities         = egress_from.value.identities
      identity_type      = egress_from.value.identity_type
      source_restriction = egress_from.value.source_restriction
      dynamic "sources" {
        for_each = egress_from.value.sources != null ? egress_from.value.sources : []
        content {
          access_level = sources.value.access_level
          dynamic "psc_endpoint" {
            for_each = sources.value.psc_endpoint != null ? [sources.value.psc_endpoint] : []
            content {
              forwarding_rule = psc_endpoint.value.forwarding_rule
            }
          }
          resource = sources.value.resource
        }
      }
    }
  }

  dynamic "egress_to" {
    for_each = each.value.egress_to != null ? [each.value.egress_to] : []
    content {
      external_resources = egress_to.value.external_resources
      dynamic "operations" {
        for_each = egress_to.value.operations != null ? egress_to.value.operations : []
        content {
          dynamic "method_selectors" {
            for_each = operations.value.method_selectors != null ? operations.value.method_selectors : []
            content {
              method     = method_selectors.value.method
              permission = method_selectors.value.permission
            }
          }
          service_name = operations.value.service_name
        }
      }
      resources = egress_to.value.resources
      roles     = egress_to.value.roles
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

