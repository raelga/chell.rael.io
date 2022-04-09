docker run -d --restart always \
  -p 80:80 -p 8080:8080 \
  -v `pwd`/config/traefik.toml:/etc/traefik/traefik.toml \
  -v `pwd`/config/chell-rules.toml:/etc/traefik/chell-rules.toml \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name traefik \
  traefik
