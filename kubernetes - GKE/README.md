# Step 0: Connect to Your GKE Cluster (if not already connected)
## About this folder
This folder contains Kubernetes manifests and instructions to deploy the Argo CD Extension Installer on Google Kubernetes Engine (GKE).

## What this README covers
This README explains how to build, push, and run the CleanStart container image on GKE using the resources in this folder. Follow the steps below to connect to your cluster, build and publish the image, and deploy it to GKE.

---

Prerequisites:
- Ensure you have kubectl configured and connected to your Kubernetes cluster.
- You should have the manifest files in this directory.

# Right Directory
```bash
cd /cleanstart-containers/argocd-extension-installer/kubernetes - GKE/
```

# Step 1: Create the Namespace
```bash
kubectl apply -f namespace.yaml
```
Notes:
- This creates the `argocd-extension` namespace used by the deployment and service.
- You can verify with: `kubectl get ns argocd-extension`.

# Step 2: Deploy the Application
```bash
kubectl apply -f deployment.yaml -n argocd-extension
```

Note: The deployment uses the pre-built `cleanstart/argocd-extension-installer:latest-dev` image. The container runs in the background ready for extension management tasks. You can execute commands inside the container using `kubectl exec`.

# Step 3: Create the Service
```bash
kubectl apply -f service.yaml -n argocd-extension
```

# Step 4: Verify Deployment
```bash
kubectl get all -n argocd-extension
```
Tips:
- Pods should be in `Running` state; if not, check logs and events below.
- Describe resources for troubleshooting: `kubectl describe pod <POD> -n argocd-extension`.


# Useful Commands
```bash
# View logs
kubectl logs -f deployment/argocd-extension-installer -n argocd-extension

# Check deployment status
kubectl get all -n argocd-extension
kubectl get events -n argocd-extension --sort-by='.lastTimestamp'

# Execute commands inside the container
kubectl exec -it deployment/argocd-extension-installer -n argocd-extension -- /bin/sh

# Check pod details
kubectl describe pod <POD_NAME> -n argocd-extension
```

The container is ready for extension management tasks and can be accessed for interactive work using `kubectl exec`.

# Cleanup
```bash
# If you ran commands from this folder, paths can be relative
kubectl delete -f service.yaml -n argocd-extension
kubectl delete -f deployment.yaml -n argocd-extension
kubectl delete -f namespace.yaml

```

