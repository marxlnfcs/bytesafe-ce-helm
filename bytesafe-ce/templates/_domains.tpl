{{- define "domains.baseDomain" }}
{{- printf "%s" (.Values.common.baseDomain) }}
{{- end }}
{{- define "domains.baseDomain.reversed" }}
{{- $domainBase := (include "domains.baseDomain" .) }}
{{- $domainBaseArray := splitList "." $domainBase }}
{{- $domainBaseArrayReversed := reverse $domainBaseArray }}
{{- $domainBaseReversed := join "." $domainBaseArrayReversed }}
{{- printf "%s" ($domainBaseReversed) }}
{{- end }}
{{- define "domains.baseDomain.tls.secretName" }}
{{- printf "%s" (include "tls.name.generate" (include "domains.baseDomain.reversed" .)) }}
{{- end }}