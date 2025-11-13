FROM n8nio/n8n:latest

# Set timezone (optional)
ENV GENERIC_TIMEZONE=UTC

# Render sets the port dynamically, so tell n8n to use it
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=http

# Render will set $PORT automatically, but we expose it anyway for clarity
EXPOSE 10000

# Start n8n using /bin/sh explicitly
CMD ["sh", "-c", "n8n start --port $PORT"]
