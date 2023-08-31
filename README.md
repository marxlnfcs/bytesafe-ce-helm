# Helm - ByteSafe Community Edition
Helm chart for running bytesafe-ce in kubernetes

## Simple values.yaml
```yaml
common:
  baseDomain: "registry.example.com"
  dataEncryptionKey: "IAmNotSecure:("

bytesafe:
  ingress:
    enabled: true
    tls: true
    annotations:
      cert-manager.io/cluster-issuer: letsencrypt-production
  persistence:
    enabled: true
    storageClass: "local-path"
    size: 8Gi

postgres:
  persistence:
    enabled: true
    storageClass: "local-path"
    size: 8Gi

redis:
  persistence:
    enabled: true
    storageClass: "local-path"
    size: 8Gi
```