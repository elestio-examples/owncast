set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting..."
sleep 10s;

target=$(docker-compose port app 8080)

curl http://${target}/api/admin/config/adminpass \
  -H 'content-type: text/plain;charset=UTF-8' \
  -u "admin:abc123" \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
  --data-raw '{"value":"'${ADMIN_PASSWORD}'"}' \
  --compressed