{{/*
Expand the name of the chart.
*/}}
{{- define "fedimint.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "fedimint.fullname" -}}
{{- if .Values.fedimintd.fullnameOverride }}
{{- .Values.fedimintd.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.fedimintd.nameOverride }}
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
{{- define "fedimint.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "fedimint.labels" -}}
helm.sh/chart: {{ include "fedimint.chart" . }}
{{ include "fedimint.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.fedimintd.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "fedimint.selectorLabels" -}}
app.kubernetes.io/name: {{ include "fedimint.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "fedimint.serviceAccountName" -}}
{{- if .Values.global.serviceAccount.create }}
{{- default (include "fedimint.fullname" .) .Values.global.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.global.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Expand the name of the guardianui.
*/}}
{{- define "guardian-ui.name" -}}
{{- default "guardian-ui" .Values.guardianui.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "guardian-ui.fullname" -}}
{{- if .Values.guardianui.fullnameOverride }}
{{- .Values.guardianui.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "guardian-ui" .Values.guardianui.nameOverride }}
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
{{- define "guardian-ui.selectorLabels" -}}
app.kubernetes.io/name: {{ include "guardian-ui.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{/*
Common labels
*/}}
{{- define "guardian-ui.labels" -}}
helm.sh/chart: {{ include "fedimint.chart" . }}
{{ include "guardian-ui.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.guardianui.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
