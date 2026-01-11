FROM mcr.microsoft.com/playwright:v1.42.1-jammy

WORKDIR /app

RUN npm install -g @executeautomation/playwright-mcp-server

EXPOSE 3000

CMD ["sh", "-c", "playwright-mcp-server --host 0.0.0.0 --port ${PORT}"]
