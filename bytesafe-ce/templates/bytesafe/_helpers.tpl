{{- define "bytesafe.labels" }}
{{ include "common.labels.standard" . }}
app.kubernetes.io/component: bytesafe
{{- end -}}


{{- define "bytesafe.name" -}}
  {{- printf "%s" (include "common.names.fullname" .) -}}
{{- end -}}


{{- define "bytesafe.service.name" -}}
{{- if .Values.bytesafe.service.name -}}
    {{- .Values.bytesafe.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s" (include "common.names.fullname" .) -}}
{{ end }}
{{- end }}

{{- define "bytesafe.service.name.external" -}}
{{- if .Values.bytesafe.service.name -}}
    {{- .Values.bytesafe.service.name | trunc 63 | trimSuffix "-" }}
{{ else }}
    {{- printf "%s.%s.svc.%s" (include "common.names.fullname" .) (.Release.Namespace) (.Values.clusterDomain) -}}
{{ end }}
{{- end }}

{{- define "bytesafe.url" }}
{{- if .Values.bytesafe.ingress.tls }}
{{- printf "https://%s" (include "domains.baseDomain" .) }}
{{- else }}
{{- printf "http://%s" (include "domains.baseDomain" .) }}
{{- end }}
{{- end }}