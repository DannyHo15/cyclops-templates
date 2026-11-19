{{- define "radar.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "radar.labels" -}}
app.kubernetes.io/name: {{ include "radar.name" . }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{- define "radar.selector" -}}
app.kubernetes.io/name: {{ include "radar.name" . }}
{{- end -}}
