
## How do I?

### initial terraform setup

```
export TF_BACKEND_DATABASE_URL=`heroku config:get DATABASE_URL --app 'fauxstore-terraform-backend'`
./bin/dterraform init -backend-config="conn_str=$TF_BACKEND_DATABASE_URL"
./bin/dterraform workspace select non-prod
```


### apply terraform
```
export HEROKU_EMAIL=____
export HEROKU_API_KEY=____

./bin/dterraform plan
./bin/dterraform apply
```
