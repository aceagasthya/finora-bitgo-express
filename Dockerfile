FROM bitgo/express:latest
ENV BITGO_ENV=test
ENV PORT=3080

# This ensures only one version of each dependency is used, fixing the @polkadot error
RUN npm dedupe

CMD bitgo-express --port 3080 --env test --bind 0.0.0.0 --debug
