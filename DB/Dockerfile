FROM postgres:15-alpine

# Metadata
LABEL maintainer="k8n-demo" \
      version="1.0" \
      description="PostgreSQL database with initialization scripts"

# Copy initialization script
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL default port
EXPOSE 5432

# Health check
HEALTHCHECK --interval=10s --timeout=5s --start-period=30s --retries=5 \
  CMD pg_isready -U postgres
