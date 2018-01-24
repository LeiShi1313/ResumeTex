docker-compose up -d
sleep 10

echo 'Install some LaTex packages'
echo 'https://github.com/docker/compose/issues/1809'

for container_id in $(docker ps --filter='name=resumetex' -q)
  do
    docker exec $container_id sh -c 'tlmgr install preprint'
  done

echo Done