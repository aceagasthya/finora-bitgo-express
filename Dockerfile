FROM bitgo/express:latest

# Set environment variables
ENV BITGO_ENV=test
ENV PORT=3080

# Use the default entrypoint without specifying "bitgo-express"
