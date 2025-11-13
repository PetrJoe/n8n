# Use official n8n image
FROM n8nio/n8n:latest

# Optional: set timezone
ENV GENERIC_TIMEZONE=UTC

# Expose port for Render
EXPOSE 10000

# Run n8n on port 10000 (Render expects apps to bind to $PORT)
CMD n8n start --port $PORT
