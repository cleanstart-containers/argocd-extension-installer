# CleanStart Container for ArgoCD Extension Installer

Official ArgoCD Extension Installer container image optimized for enterprise environments. Includes comprehensive tools for managing ArgoCD extensions and plugins in Kubernetes clusters. Features security-hardened base image, minimal attack surface, and FIPS-compliant cryptographic modules. Supports both production deployments and development workflows with separate tagged versions. Includes extension management tools, kubectl, and essential Kubernetes tools for GitOps workflows.

**📌 CleanStart Foundation:** Security-hardened, minimal base OS designed for enterprise containerized environments.

**Image Path:** `ghcr.io/cleanstart-containers/argocd-extension-installer`

**Registry:** CleanStart Registry

---

## Overview

The ArgoCD Extension Installer is a specialized container designed for managing ArgoCD extensions and plugins in Kubernetes clusters. It provides a complete environment for extension management within GitOps workflows, enabling seamless integration of custom functionality into ArgoCD deployments.

---

## Key Features

Core capabilities and strengths of this container:

- Complete ArgoCD extension management environment
- Optimized for cloud-native and microservices architectures
- Security-hardened base image with minimal attack surface
- FIPS-compliant cryptographic modules
- Extension management tools included
- kubectl and essential Kubernetes tools
- Separate tags for development and production workflows

---

## Common Use Cases

Typical scenarios where this container excels:

- Building and deploying ArgoCD extensions
- Cloud-native GitOps development
- Custom plugin installation for ArgoCD
- Extension lifecycle management
- GitOps workflow customization
- ArgoCD UI extension deployment

---

## Quick Start

### Pull Commands

Download the runtime container images:
```bash
docker pull ghcr.io/cleanstart-containers/argocd-extension-installer:latest
```
```bash
docker pull ghcr.io/cleanstart-containers/argocd-extension-installer:latest-dev
```

### Interactive Development

Start interactive session for development:
```bash
docker run --rm -it --entrypoint /bin/sh ghcr.io/cleanstart-containers/argocd-extension-installer:latest-dev
```

### Container Start

Start the container:
```bash
docker run --rm -it --name argocd-extension-dev ghcr.io/cleanstart-containers/argocd-extension-installer:latest
```

---

## Best Practices

- Use specific image tags for production (avoid latest)
- Configure resource limits: memory and CPU constraints
- Enable read-only root filesystem when possible
- Mount extensions directory as volume for persistence
- Use proper RBAC for extension management
- Regularly update extensions and base image

---

## Architecture Support

CleanStart images support multiple architectures to ensure compatibility across different deployment environments:

- **AMD64**: Intel and AMD x86-64 processors
- **ARM64**: ARM-based processors including Apple Silicon and ARM servers

### Multi-Platform Images
```bash
docker pull --platform linux/amd64 ghcr.io/cleanstart-containers/argocd-extension-installer:latest
```
```bash
docker pull --platform linux/arm64 ghcr.io/cleanstart-containers/argocd-extension-installer:latest
```

---

## Resources

- **Official Documentation:** https://argo-cd.readthedocs.io/en/latest/
- **ArgoCD Extensions Documentation:** https://argo-cd.readthedocs.io/en/stable/developer-guide/extensions/
- **Provenance / SBOM / Signature:** https://images.cleanstart.com/images/argocd-extension-installer
- **Docker Hub:** https://hub.docker.com/r/cleanstart/argocd-extension-installer
- **CleanStart All Images:** https://images.cleanstart.com
- **CleanStart Community Images:** https://hub.docker.com/u/cleanstart

---

## Vulnerability Disclaimer

CleanStart offers Docker images that include third-party open-source libraries and packages maintained by independent contributors. While CleanStart maintains these images and applies industry-standard security practices, it cannot guarantee the security or integrity of upstream components beyond its control.

Users acknowledge and agree that open-source software may contain undiscovered vulnerabilities or introduce new risks through updates. CleanStart shall not be liable for security issues originating from third-party libraries, including but not limited to zero-day exploits, supply chain attacks, or contributor-introduced risks.

**Security remains a shared responsibility:** CleanStart provides updated images and guidance where possible, while users are responsible for evaluating deployments and implementing appropriate controls.
