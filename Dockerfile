FROM bitgo/express:latest

ENV BITGO_ENV=test
# The PORT variable is automatically provided by Railway, so you don't need to set it here.

# This command will now correctly use the port assigned by Railway.
CMD bitgo-express --port $PORT --env $BITGO_ENV --bind 0.0.0.0 --debug
