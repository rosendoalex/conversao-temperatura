# Define image base

FROM alpine

# Install packages

RUN apk update && apk add npm nodejs

# Define workdir

WORKDIR /app

# Add packages

COPY src/package*.json /app/

# Build application

RUN npm install

# Add all files application

COPY ./src /app

# Expose port

EXPOSE 8080

# Command for application

CMD node server
