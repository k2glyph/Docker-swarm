### Creating Company Network
docker network create -d=bridge company
### Running Customer Api
docker run -d --name customer-api --net company swarmgs/customer
### Running Balance Api
docker run -d --name balance-api --net company -p 4000:3000 -e MYWEB_CUSTOMER_API=customer-api:3000 swarmgs/balance

### Running Customer and Balance Api with docker-compose
docker-compose -f company.yml up -d


### Running visualizer from dockersamples
docker service create --name=viz --publish=8090:8080 --constraint=node.role==manager --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock dockersamples/visualizer

### Running cadvisor in global
docker service create --mode=global --name=cadvisor \
--mount type=bind,src=/,dst=/rootfs,readonly=true \
--mount type=bind,src=/var/run,dst=/var/run,readonly=false \
--mount type=bind,src=/sys,dst=/sys,readonly=true \
--mount type=bind,src=/var/lib/docker/,dst=/var/lib/docker,readonly=true \
--publish 8080:8080 google/cadvisor