FROM node:4.4.5
ENV LAST_UPDATED 20160617T185400
ENV http_proxy http://proxy.pal.sap.corp:8080 
ENV https_proxy http://proxy.pal.sap.corp:8080

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the outside
ENV PORT 1337
EXPOSE 1337

# Launch application
CMD ["npm","start"]
