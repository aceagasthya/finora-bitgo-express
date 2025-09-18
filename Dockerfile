FROM bitgo/express:latest
CMD ["bitgo-express", "--port", "3080", "--env", "test", "--bind", "0.0.0.0", "--debug"]
