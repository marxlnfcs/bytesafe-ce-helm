{{- define "postgres.host" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.host) }}
{{- else }}
{{- printf "%s" (include "postgres.service.name.external" .) }}
{{- end }}
{{- end }}

{{- define "postgres.port" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.port) }}
{{- else }}
{{- printf "%s" (.Values.postgres.service.port) }}
{{- end }}
{{- end }}

{{- define "postgres.username" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.username) }}
{{- else }}
{{- printf "%s" ("postgres") }}
{{- end }}
{{- end }}

{{- define "postgres.password" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.password) }}
{{- else }}
{{- printf "%s" ("postgres") }}
{{- end }}
{{- end }}

{{- define "postgres.admin.username" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.adminUsername) }}
{{- else }}
{{- printf "%s" ("postgres") }}
{{- end }}
{{- end }}

{{- define "postgres.admin.password" }}
{{- if .Values.postgres.external.enabled }}
{{- printf "%s" (.Values.postgres.external.adminPassword) }}
{{- else }}
{{- printf "%s" ("postgres") }}
{{- end }}
{{- end }}







{{- define "redis.host" }}
{{- if .Values.redis.external.enabled }}
{{- printf "%s" (.Values.redis.external.host) }}
{{- else }}
{{- printf "%s" (include "redis.service.name.external" .) }}
{{- end }}
{{- end }}

{{- define "redis.port" }}
{{- if .Values.redis.external.enabled }}
{{- printf "%s" (.Values.redis.external.port) }}
{{- else }}
{{- printf "%s" (.Values.redis.service.port) }}
{{- end }}
{{- end }}

{{- define "redis.username" }}
{{- if .Values.redis.external.enabled }}
{{- printf "%s" (.Values.redis.external.username) }}
{{- else }}
{{- printf "%s" ("") }}
{{- end }}
{{- end }}

{{- define "redis.password" }}
{{- if .Values.redis.external.enabled }}
{{- printf "%s" (.Values.redis.external.password) }}
{{- else }}
{{- printf "%s" ("") }}
{{- end }}
{{- end }}