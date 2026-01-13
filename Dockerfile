FROM node:20-bullseye

# Set working directory
WORKDIR /app

# Install Playwright system dependencies
RUN npx playwright install-deps

# Install MCP Playwright server globally
RUN npm install -g @executeautomation/playwright-mcp-server

# Install browsers
RUN npx playwright install chromium

# Copy config
COPY mcp-config.json /app/mcp-config.json

# Render injects PORT at runtime
ENV NODE_ENV=production

# IMPORTANT: single process, single port, bind immediately
CMD ["sh", "-c", "playwright-mcp-server --config /app/mcp-config.json --port $PORT"]
