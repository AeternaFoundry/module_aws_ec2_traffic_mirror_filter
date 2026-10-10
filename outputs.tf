output "ec2_traffic_mirror_filters_id" {
  description = "Map of id values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_traffic_mirror_filters_arn" {
  description = "Map of arn values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_traffic_mirror_filters_description" {
  description = "Map of description values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ec2_traffic_mirror_filters_network_services" {
  description = "Map of network_services values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.network_services if v.network_services != null && length(v.network_services) > 0 }
}
output "ec2_traffic_mirror_filters_region" {
  description = "Map of region values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_traffic_mirror_filters_tags" {
  description = "Map of tags values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ec2_traffic_mirror_filters_tags_all" {
  description = "Map of tags_all values across all ec2_traffic_mirror_filters, keyed the same as var.ec2_traffic_mirror_filters"
  value       = { for k, v in aws_ec2_traffic_mirror_filter.ec2_traffic_mirror_filters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

