FROM bitgo/express:latest
# Bind to all interfaces, run on testnet (use --env prod for mainnet)
# Use the PORT environment variable for Railway compatibility
CMD ["sh", "-c", "bitgo-express --port ${PORT:-3080} --env test --bind 0.0.0.0 --debug"]
