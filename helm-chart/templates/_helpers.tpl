{{/*
Expand the name of the chart.
*/}}
{{- define "argocd-extension-installer.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "argocd-extension-installer.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "argocd-extension-installer.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "argocd-extension-installer.labels" -}}
helm.sh/chart: {{ include "argocd-extension-installer.chart" . }}
{{ include "argocd-extension-installer.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.labels.common }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "argocd-extension-installer.selectorLabels" -}}
app.kubernetes.io/name: {{ include "argocd-extension-installer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ .Values.app.name }}
{{- end }}

{{/*
Full image path for main container
*/}}
{{- define "argocd-extension-installer.image" -}}
{{- printf "%s/%s/%s/%s:%s" .Values.image.registry .Values.image.project .Values.image.repository .Values.image.name .Values.image.tag }}
{{- end }}

{{/*
Full image path for test sidecar (FIPS-aware)
*/}}
{{- define "argocd-extension-installer.sidecarImage" -}}
{{- if .Values.fips.enabled }}
{{- printf "%s/%s/container-images/cleanstart-base-fips:latest-dev" .Values.testSidecar.image.registry .Values.testSidecar.image.project }}
{{- else }}
{{- printf "%s/%s/container-images/cleanstart-base:latest-dev" .Values.testSidecar.image.registry .Values.testSidecar.image.project }}
{{- end }}
{{- end }}

{{/*
Init container image (FIPS-aware)
*/}}
{{- define "argocd-extension-installer.initImage" -}}
{{- if .Values.fips.enabled }}
{{- printf "%s/%s/container-images/cleanstart-base-fips:latest-dev" .Values.image.registry .Values.image.project }}
{{- else }}
{{- printf "%s/%s/container-images/cleanstart-base:latest-dev" .Values.image.registry .Values.image.project }}
{{- end }}
{{- end }}
