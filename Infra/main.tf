terraform {
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "eu-west-3"
}

module "prometheus" {
  source = "./Prometheus"

}

module "web" {
  source = "./Serveur_web"
  depends_on = [ module.prometheus ]
}

module "grafana" {
  source = "./Grafana"
  depends_on = [ module.web ]
}