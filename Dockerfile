FROM mcr.microsoft.com/playwright:v1.42.1-jammy

WORKDIR /app

# Install MCP server
RUN npm install -g @executeautomation/playwright-mcp-server

# Render provides PORT env var
EXPOSE 3000

CMD ["sh", "-c", "playwright-mcp-server --port ${PORT:-3000}"]
