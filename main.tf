# Copyright (C) SecretStartups <hello@secretstartups.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

locals {
}

resource "digitalocean_kubernetes_cluster" "this" {
  name                             = var.cluster_name
  region                           = var.region
  version                          = data.digitalocean_kubernetes_versions.this.latest_version
  tags                             = var.tags
  auto_upgrade                     = var.auto_upgrade
  destroy_all_associated_resources = var.destroy_all_associated_resources
  surge_upgrade                    = var.surge_upgrade
  ha                               = var.ha
  registry_integration             = var.registry_integration

  # Network-related Config
  vpc_uuid       = var.vpc_uuid
  cluster_subnet = var.cluster_subnet
  service_subnet = var.service_subnet

  node_pool {
    name       = format("%s-%s", var.cluster_name, var.node_suffix)
    size       = element(data.digitalocean_sizes.this.sizes, 0).slug
    auto_scale = var.auto_scale
    min_nodes  = var.min_nodes
    max_nodes  = var.max_nodes
    tags       = var.tags
    labels     = var.node_labels
  }

  maintenance_policy {
    start_time = var.maintenance_policy_start_time
    day        = var.maintenance_policy_day
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags, node_pool
    ]
  }
}
