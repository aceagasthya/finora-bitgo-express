# Use a clean Node.js base image
FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Clone the BitGoJS repository and build it
# This step ensures all dependencies are compatible
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/BitGo/BitGoJS.git . && \
    npm install && \
    npm run build

# Set environment variables for BitGo Express
ENV BITGO_ENV=test
ENV PORT=3080

# Expose the port
EXPOSE 3080

# Command to run BitGo Express
CMD ["node", "modules/express/bin/bitgo-express", "--port", "3080", "--env", "test", "--bind", "0.0.0.0", "--debug"]
