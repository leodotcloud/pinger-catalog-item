version: '2'
services:
  pinger:
    image: leodotcloud/test-dsny-pinger:dev
    labels:
      io.rancher.scheduler.global: 'true'
    volumes:
      - /var/run/docker:/var/run/docker
      - /var/run/docker.sock:/var/run/docker.sock
    environment:
      - PING_INTERVAL=${PING_INTERVAL}
    logging:
      driver: json-file
      options:
        max-size: 25m
        max-file: '2'
