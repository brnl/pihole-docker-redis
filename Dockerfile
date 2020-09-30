FROM pihole/pihole:v5.1.2

# Upgrade and install the PHP Redis extension
RUN apt-get update && \
  # apt-get upgrade -y && \
  apt-get install php7.0-redis -y && \
  apt-get autoremove -y && \
  apt-get autoclean \
  && rm -rf /var/lib/apt/lists/*
