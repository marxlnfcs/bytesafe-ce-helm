{{- define "postgres.labels" }}
{{ include "common.labels.standard" . }}
app.kubernetes.io/component: postgres
{{- end -}}


{{- define "postgres.name" -}}
  {{- printf "%s-postgres" (include "common.names.fullname" .) -}}
{{- end -}}


{{- define "postgres.service.name" -}}
{{- if .Values.postgres.service.name -}}
    {{- .Values.postgres.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s-postgres" (include "common.names.fullname" .) -}}
{{ end }}
{{- end }}

{{- define "postgres.service.name.external" -}}
{{- if .Values.postgres.service.name -}}
    {{- .Values.postgres.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s-postgres.%s.svc.%s" (include "common.names.fullname" .) (.Release.Namespace) (.Values.clusterDomain) -}}
{{ end }}
{{- end }}