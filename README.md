# atlas-argo-demo

Demonstrating GitOps for Databases with ArgoCD and Atlas

## Setting up

Create a secret for you Atlas token.

```bash
export ATLAS_TOKEN=<your token>
kubectl create secret generic atlas-token --from-literal=ATLAS_TOKEN=${ATLAS_TOKEN} -n argocd 
```

Deploy the root "app of apps" to ArgoCD.

```bash
kubectl apply -f Application.yaml
```