{{/*
Expand the name of the chart.
*/}}
{{- define "gateway.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gateway.fullname" -}}
{{- if .Values.gatewayd.fullnameOverride }}
{{- .Values.gatewayd.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.gatewayd.nameOverride }}
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
{{- define "gateway.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gateway.labels" -}}
helm.sh/chart: {{ include "gateway.chart" . }}
{{ include "gateway.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.gatewayd.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gateway.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gateway.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gateway.serviceAccountName" -}}
{{- if .Values.global.serviceAccount.create }}
{{- default (include "gateway.fullname" .) .Values.global.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.global.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Expand the name of the gateway-ui.
*/}}
{{- define "gateway-ui.name" -}}
{{- default "gateway-ui" .Values.gatewayui.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "gateway-ui.fullname" -}}
{{- if .Values.gatewayui.fullnameOverride }}
{{- .Values.gatewayui.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "gateway-ui" .Values.gatewayui.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}



{{/*
Selector labels
*/}}
{{- define "gateway-ui.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gateway-ui.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{/*
Common labels
*/}}
{{- define "gateway-ui.labels" -}}
helm.sh/chart: {{ include "gateway.chart" . }}
{{ include "gateway-ui.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.gatewayui.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
