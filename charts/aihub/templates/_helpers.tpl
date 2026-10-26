{{- define "aihub.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "aihub.labels" -}}
app.kubernetes.io/name: {{ include "aihub.name" . }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{- define "aihub.selector" -}}
app.kubernetes.io/name: {{ include "aihub.name" . }}
{{- end -}}
