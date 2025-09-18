FROM bitgo/express:latest
# Bind to all interfaces, run on testnet (use --env prod for mainnet)
CMD ["--port", "${PORT:-3080}", "--env", "test", "--bind", "0.0.0.0", "--debug"]
