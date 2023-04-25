
{{- define "app1.tag" -}}
{{- default .Chart.AppVersion .Values.pod.image.tag -}}
{{- end -}}

{{/*
Expand image name.
*/}}
{{- define "app1.image" -}}
{{- printf "%s:%s" .Values.pod.image.repository (include "app1.tag" .) -}}
{{- end -}}
