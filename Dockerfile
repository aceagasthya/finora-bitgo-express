FROM bitgo/express:latest

# Set environment variables
ENV BITGO_ENV=test
ENV PORT=3080

# Use exec form to avoid shell processing issues
CMD ["bitgo-express", "--port", "3080", "--env", "test", "--bind", "0.0.0.0", "--debug"]
