### Creating Company Network
docker network create -d=bridge company
### Running Customer Api
docker run -d --name customer-api --net company swarmgs/customer
### Running Balance Api
docker run -d --name balance-api --net company -p 4000:3000 -e MYWEB_CUSTOMER_API=customer-api:3000 swarmgs/balance

### Running Customer and Balance Api with docker-compose
docker-compose -f company.yml up -d
