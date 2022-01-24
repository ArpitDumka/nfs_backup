 # login to docker registry in all the machines
docker login yellowmessenger.azurecr.io -u yellowmessenger -p M500=ONBU61CFjQkUCD6vEjMVWTWSuyU
 
 env $(cat .env | grep "^[A-Z]" | xargs) docker stack deploy --compose-file=dbs.yaml dbs  --with-registry-auth


 env $(cat .env | grep "^[A-Z]" | xargs) docker stack deploy --compose-file=datastack.yaml datastack  --with-registry-auth