FROM bitgo/express:latest
ENV BITGO_ENV=test
ENV PORT=3080
CMD bitgo-express --port 3080 --env test --bind 0.0.0.0 --debug
