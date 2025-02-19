# Install manually
# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo update
# helm install prometheus --namespace monitoring --create-namespace --version 69.3.2 --values kubernetes/terraform/values/kube-prometheus-stack.yaml prometheus-community/kube-prometheus-stack
resource "helm_release" "prometheus" {
  name = "prometheus"

  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "monitoring"
  version          = "69.3.2"
  create_namespace = true

  values = [file("values/kube-prometheus-stack.yaml")]
}