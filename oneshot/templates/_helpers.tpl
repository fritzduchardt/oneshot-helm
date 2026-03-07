{{- define "oneshot.image" -}}
{{- $registry := .Values.registry -}}
{{- $image := .image -}}
{{- $tag := .tag -}}
{{- if $registry -}}
{{- printf "%s/%s:%s" $registry $image $tag -}}
{{- else -}}
{{- printf "%s:%s" $image $tag -}}
{{- end -}}
{{- end -}}

{{- define "dockerhub.image" -}}
{{- $image := .image -}}
{{- $tag := .tag -}}
{{- printf "%s:%s" $image $tag -}}
{{- end -}}
{{- end -}}
