provider "azurerm" {
  version         = "1.28.0"
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

provider "random" {
  version = "~> 2"
}

resource "random_string" "this" {
  upper   = false
  number  = false
  special = false
  length  = 8
}

data "azurerm_kubernetes_cluster" "this" {
  name                = "prometheusplusplus-stg0"
  resource_group_name = "prometheusplusplus-stg0"
}

provider "kubernetes" {
  host                   = data.azurerm_kubernetes_cluster.this.kube_config[0].host
  username               = data.azurerm_kubernetes_cluster.this.kube_config[0].username
  password               = data.azurerm_kubernetes_cluster.this.kube_config[0].password
  client_certificate     = base64decode(data.azurerm_kubernetes_cluster.this.kube_config.0.client_certificate)
  client_key             = base64decode(data.azurerm_kubernetes_cluster.this.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.this.kube_config.0.cluster_ca_certificate)
  load_config_file       = false
}

resource "kubernetes_namespace" "this" {
  metadata {
    name = random_string.this.result
  }
}

module "alertmanager-silences-exporter" {
  source = "../.."

  enabled   = false
  namespace = kubernetes_namespace.this.metadata.0.name

  configuration   = ""
}
