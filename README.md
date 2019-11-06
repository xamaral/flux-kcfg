# flux-kcfg
This image is based on the standard flux image and adds kubecfg.

This allows for the use of jsonnet generated manifests with flux.

A simple way to achieve this is to add .flux.yaml to tell fluxd how to generate
your k8s manifests. For example:

```yaml

version: 1
patchUpdated:
  generators:
    - command: kubecfg show all.jsonnet
```

