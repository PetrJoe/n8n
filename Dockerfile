FROM n8nio/n8n:latest

# Set timezone
ENV GENERIC_TIMEZONE=UTC
ENV TZ=UTC

# Render compatibility
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

# Security settings
ENV NODE_ENV=production
ENV N8N_ENCRYPTION_KEY=your-encryption-key-change-this
ENV N8N_USER_MANAGEMENT_JWT_SECRET=your-jwt-secret-change-this
ENV N8N_SECURE_COOKIE=true

# Database
ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/home/node/.n8n/database.sqlite

# Create data directory
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

USER node

# Use shell form to expand $PORT variable
CMD n8n start --port $PORT
