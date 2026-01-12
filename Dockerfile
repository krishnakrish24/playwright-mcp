FROM mcr.microsoft.com/playwright:v1.42.1-jammy

RUN npm install -g @executeautomation/playwright-mcp-server

CMD ["sh", "-c", "playwright-mcp-server --host 0.0.0.0 --port ${PORT}"]
