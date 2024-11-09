ARG VERSION=0.112.0

FROM otel/opentelemetry-collector-contrib:${VERSION} AS otel-collector-contrib

ADD otel-collector-config.yaml /etc/otelcol-contrib/config.yaml


FROM otel/opentelemetry-collector-contrib:${VERSION} AS otel-collector-debug

ADD otel-collector-config-debug.yaml /etc/otelcol-contrib/config.yaml
