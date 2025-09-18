# Use exec form to avoid shell processing issues
CMD ["bitgo-express", "--port", "3080", "--env", "test", "--bind", "0.0.0.0", "--debug"]
