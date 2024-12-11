1. Install Docker
2. Install Docker compose
3. Create Directory that holds Headscale

  `mkdir -p /etc/headscale && cd /etc/headscale`

4. Create empty SQlite DB in config directory

  `mkdir /etc/config`

  `touch /etc/headscale/config/db.sqlite`

5. Create docker-compose.yaml

`nano docker-compose.yaml`

6. Copy the contents from this Github into your docker compose file located at `/etc/headscale/docker-compose.yaml`

7. Run docker-compose file inside `/etc/headscale/` by using the command `sudo docker-compose up -d`
