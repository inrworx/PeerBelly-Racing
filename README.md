# Belly Cart

PeerBelly Racing: Belly Cart, the second PeerBelly Arcade game. It is one self-contained
`index.html` (no build step, no runtime network calls except Google Fonts).

Served from the PB Gaming server at https://games.peerbelly.com/racing/, next to
Peer Pong at https://games.peerbelly.com/pong/.

## Play locally

Open `index.html` in a browser, or serve the folder:

```bash
python3 -m http.server 8080   # then open http://localhost:8080/
```

## Deploy (PB Gaming server)

Files live in `/var/www/games/racing`, served by Caddy under `/racing/`.
First time, as the admin user on the server:

```bash
git clone https://github.com/inrworx/PeerBelly-Racing.git ~/peerbelly-racing
~/peerbelly-racing/deploy/deploy-racing.sh
```

Then add the `/racing` block from `deploy/Caddyfile.racing` to `/etc/caddy/Caddyfile`
(inside the `games.peerbelly.com { ... }` site, next to the `/pong` handlers), and:

```bash
sudo caddy validate --config /etc/caddy/Caddyfile && sudo systemctl reload caddy
```

Later releases: `~/peerbelly-racing/deploy/deploy-racing.sh`.
