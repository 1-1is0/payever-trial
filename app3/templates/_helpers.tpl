
{{- define "app3.tag" -}}
{{- default .Chart.AppVersion .Values.pod.image.tag -}}
{{- end -}}

{{/*
Expand image name.
*/}}
{{- define "app3.image" -}}
{{- printf "%s:%s" .Values.pod.image.repository (include "app3.tag" .) -}}
{{- end -}}
