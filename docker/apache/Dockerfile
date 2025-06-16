FROM ubuntu:20.04

# Set environment variable to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install apache2 silently
RUN apt update && apt install -y apache2 tzdata

COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

