docker stop filebeat
docker rm filebeat

docker run --rm --name filebeat \
  --user=root \
  --volume=$PWD/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro \
  --volume=/Users/Shared/logs/postgresql:/var/log/postgresql:ro \
  docker.elastic.co/beats/filebeat:8.17.1 \
  filebeat -e --strict.perms=false

