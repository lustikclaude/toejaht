# Railway: serveerib staatilist mängu Caddy abil
FROM caddy:2.8-alpine
COPY index.html favicon.png og.png /srv/
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-8080}"]
