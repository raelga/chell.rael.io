docker run -d --restart always \
  -p 80:80 -p 8080:8080 \
  -v `pwd`/context/traefik.toml:/etc/traefik/traefik.toml \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name traefik \
  traefik
