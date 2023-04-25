
{{- define "app2.tag" -}}
{{- default .Chart.AppVersion .Values.pod.image.tag -}}
{{- end -}}

{{/*
Expand image name.
*/}}
{{- define "app2.image" -}}
{{- printf "%s:%s" .Values.pod.image.repository (include "app2.tag" .) -}}
{{- end -}}
