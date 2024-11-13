<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.43.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_versions.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |
| [digitalocean_sizes.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/sizes) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_scale"></a> [auto\_scale](#input\_auto\_scale) | Whether to enable auto-scaling for the node pool. | `bool` | `true` | no |
| <a name="input_auto_upgrade"></a> [auto\_upgrade](#input\_auto\_upgrade) | Whether to enable automatic upgrades for the Kubernetes cluster. | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the Kubernetes cluster. | `string` | `"my-cluster"` | no |
| <a name="input_cluster_subnet"></a> [cluster\_subnet](#input\_cluster\_subnet) | The subnet to be used for the Kubernetes cluster. | `string` | `"10.251.0.0/16"` | no |
| <a name="input_destroy_all_associated_resources"></a> [destroy\_all\_associated\_resources](#input\_destroy\_all\_associated\_resources) | Whether to destroy all associated resources when the cluster is destroyed. | `bool` | `false` | no |
| <a name="input_do_sizes"></a> [do\_sizes](#input\_do\_sizes) | A list of maps containing the key and values for filtering DigitalOcean sizes. | `any` | <pre>[<br/>  {<br/>    "key": "slug",<br/>    "values": [<br/>      "s-2vcpu-4gb"<br/>    ]<br/>  }<br/>]</pre> | no |
| <a name="input_ha"></a> [ha](#input\_ha) | Whether to enable high availability for the Kubernetes cluster. Recommended for production workloads. | `bool` | `false` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version to deploy. | `string` | `"1.31.1"` | no |
| <a name="input_maintenance_policy_day"></a> [maintenance\_policy\_day](#input\_maintenance\_policy\_day) | The day for the maintenance policy. | `string` | `"saturday"` | no |
| <a name="input_maintenance_policy_start_time"></a> [maintenance\_policy\_start\_time](#input\_maintenance\_policy\_start\_time) | The start time for the maintenance policy. | `string` | `"03:00"` | no |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | The maximum number of nodes in the node pool. | `number` | `5` | no |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | The minimum number of nodes in the node pool. | `number` | `1` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | The number of nodes in the node pool. | `number` | `3` | no |
| <a name="input_node_labels"></a> [node\_labels](#input\_node\_labels) | A map of labels to apply to the nodes in the node pool. | `map(string)` | `{}` | no |
| <a name="input_node_suffix"></a> [node\_suffix](#input\_node\_suffix) | The suffix to be added to the node pool name. | `string` | `"pool"` | no |
| <a name="input_node_tags"></a> [node\_tags](#input\_node\_tags) | A list of tags to apply to the nodes in the node pool. | `list(string)` | <pre>[<br/>  "k8s-node"<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | The region where the Kubernetes cluster will be created. | `string` | `"nyc1"` | no |
| <a name="input_registry_integration"></a> [registry\_integration](#input\_registry\_integration) | Whether to enable registry integration for the Kubernetes cluster. | `bool` | `false` | no |
| <a name="input_service_subnet"></a> [service\_subnet](#input\_service\_subnet) | The subnet to be used for the Kubernetes services. | `string` | `"10.252.0.0/19"` | no |
| <a name="input_surge_upgrade"></a> [surge\_upgrade](#input\_surge\_upgrade) | Whether to enable surge upgrades for the Kubernetes cluster. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of tags to apply to the Kubernetes cluster. | `list(string)` | <pre>[<br/>  "k8s",<br/>  "production"<br/>]</pre> | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | The UUID of the VPC where the Kubernetes cluster will be created. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_auto_upgrade"></a> [cluster\_auto\_upgrade](#output\_cluster\_auto\_upgrade) | n/a |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The endpoint for accessing the Kubernetes cluster. |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the Kubernetes cluster. |
| <a name="output_cluster_kc_client_certificate"></a> [cluster\_kc\_client\_certificate](#output\_cluster\_kc\_client\_certificate) | n/a |
| <a name="output_cluster_kc_client_key"></a> [cluster\_kc\_client\_key](#output\_cluster\_kc\_client\_key) | n/a |
| <a name="output_cluster_kc_cluster_ca_certificate"></a> [cluster\_kc\_cluster\_ca\_certificate](#output\_cluster\_kc\_cluster\_ca\_certificate) | n/a |
| <a name="output_cluster_kc_host"></a> [cluster\_kc\_host](#output\_cluster\_kc\_host) | n/a |
| <a name="output_cluster_kc_raw_config"></a> [cluster\_kc\_raw\_config](#output\_cluster\_kc\_raw\_config) | n/a |
| <a name="output_cluster_kc_token"></a> [cluster\_kc\_token](#output\_cluster\_kc\_token) | n/a |
| <a name="output_cluster_maintenance_policy"></a> [cluster\_maintenance\_policy](#output\_cluster\_maintenance\_policy) | The maintenance policy of the Kubernetes cluster. |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the Kubernetes cluster. |
| <a name="output_cluster_node_pool_auto_scale"></a> [cluster\_node\_pool\_auto\_scale](#output\_cluster\_node\_pool\_auto\_scale) | Whether auto-scaling is enabled for the node pools. |
| <a name="output_cluster_node_pool_ids"></a> [cluster\_node\_pool\_ids](#output\_cluster\_node\_pool\_ids) | The IDs of the node pools in the Kubernetes cluster. |
| <a name="output_cluster_node_pool_max_nodes"></a> [cluster\_node\_pool\_max\_nodes](#output\_cluster\_node\_pool\_max\_nodes) | The maximum number of nodes in the node pools. |
| <a name="output_cluster_node_pool_min_nodes"></a> [cluster\_node\_pool\_min\_nodes](#output\_cluster\_node\_pool\_min\_nodes) | The minimum number of nodes in the node pools. |
| <a name="output_cluster_node_pool_names"></a> [cluster\_node\_pool\_names](#output\_cluster\_node\_pool\_names) | The names of the node pools in the Kubernetes cluster. |
| <a name="output_cluster_node_pool_node_count"></a> [cluster\_node\_pool\_node\_count](#output\_cluster\_node\_pool\_node\_count) | The number of nodes in the node pools. |
| <a name="output_cluster_node_pool_sizes"></a> [cluster\_node\_pool\_sizes](#output\_cluster\_node\_pool\_sizes) | The sizes of the nodes in the node pools. |
| <a name="output_cluster_region"></a> [cluster\_region](#output\_cluster\_region) | The region where the Kubernetes cluster is located. |
| <a name="output_cluster_status"></a> [cluster\_status](#output\_cluster\_status) | The current status of the Kubernetes cluster. |
| <a name="output_cluster_version"></a> [cluster\_version](#output\_cluster\_version) | The version of Kubernetes running on the cluster. |
<!-- END_TF_DOCS -->