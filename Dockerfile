# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the Docker container
WORKDIR /usr/share/nginx/html

# Copy the static files from the GitHub repository to the working directory
COPY . .

# Expose port 80 to allow traffic into the container
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
