- *CleanStart Container for ArgoCD Extension InstallerOfficial ArgoCD Extension Installer container image optimized for enterprise environments. Includes comprehensive tools for managing ArgoCD extensions and plugins in Kubernetes clusters. Features security-hardened base image, minimal attack surface, and FIPS-compliant cryptographic modules. Supports both production deployments and development workflows with separate tagged versions. Includes extension management tools, kubectl, and essential Kubernetes tools for GitOps workflows.
 Key Features* Complete ArgoCD extension management environment
- Optimized for cloud-native and microservices architectures
 Common Use Cases* Building and deploying ArgoCD extensions
- Cloud-native GitOps development
 Pull CommandsDownload the runtime container images

```bash
docker pull cleanstart/argocd-extension-installer:latest
```
```bash
docker pull cleanstart/argocd-extension-installer:latest-dev
```
 Interactive DevelopmentStart interactive session for development

```bash
docker run --rm -it --entrypoint /bin/sh cleanstart/argocd-extension-installer:latest-dev
```
 Container StartStart the container
```bash
docker run --rm -it --name argocd-extension-dev cleanstart/argocd-extension-installer:latest
```
 Best Practices* Use specific image tags for production (avoid latest)
- Configure resource limits: memory and CPU constraints
- Enable read-only root filesystem when possible
 Architecture SupportMulti-Platform Images```bash
docker pull --platform linux/amd64 cleanstart/argocd-extension-installer:latest
```
```bash
docker pull --platform linux/arm64 cleanstart/argocd-extension-installer:latest
```
 ###

## Resources

- **Official Documentation:** https://argo-cd.readthedocs.io/en/latest/
- **Provenance / SBOM / Signature:** https://images.cleanstart.com/images/argocd-extension-installer
- **Docker Hub:** https://hub.docker.com/r/cleanstart/argocd-extension-installer
- **CleanStart All Images:** https://images.cleanstart.com
- **CleanStart Community Images:** https://hub.docker.com/u/cleanstart

### Vulnerability Disclaimer

CleanStart offers Docker images that include third-party open-source libraries and packages maintained by independent contributors. While CleanStart maintains these images and applies industry-standard security practices, it cannot guarantee the security or integrity of upstream components beyond its control.

Users acknowledge and agree that open-source software may contain undiscovered vulnerabilities or introduce new risks through updates. CleanStart shall not be liable for security issues originating from third-party libraries, including but not limited to zero-day exploits, supply chain attacks, or contributor-introduced risks.

Security remains a shared responsibility: CleanStart provides updated images and guidance where possible, while users are responsible for evaluating deployments and implementing appropriate controls.
