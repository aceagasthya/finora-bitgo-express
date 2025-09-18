FROM bitgo/express:latest
ENV BITGO_ENV=test
ENTRYPOINT ["bitgo-express"]
CMD ["--port", "3080", "--env", "test", "--bind", "0.0.0.0", "--debug"]
