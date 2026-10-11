output "access_context_manager_service_perimeter_egress_policies_id" {
  description = "Map of id values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no id are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_access_policy_id" {
  description = "Map of access_policy_id values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no access_policy_id are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.access_policy_id if v.access_policy_id != null && length(v.access_policy_id) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_deletion_policy" {
  description = "Map of deletion_policy values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_egress_from" {
  description = "Map of egress_from values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no egress_from are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => one(v.egress_from) if v.egress_from != null && length(v.egress_from) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_egress_to" {
  description = "Map of egress_to values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no egress_to are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => one(v.egress_to) if v.egress_to != null && length(v.egress_to) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_etag" {
  description = "Map of etag values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no etag are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_perimeter" {
  description = "Map of perimeter values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no perimeter are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.perimeter if v.perimeter != null && length(v.perimeter) > 0 }
}
output "access_context_manager_service_perimeter_egress_policies_title" {
  description = "Map of title values across all access_context_manager_service_perimeter_egress_policies, keyed the same as var.access_context_manager_service_perimeter_egress_policies except keys with no title are omitted"
  value       = { for k, v in google_access_context_manager_service_perimeter_egress_policy.access_context_manager_service_perimeter_egress_policies : k => v.title if v.title != null && length(v.title) > 0 }
}

