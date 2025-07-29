# simt-postgraphile

## TODO
- create a pg type that describes the shape of the jwt token (WARNING: jwtSecret provided, however jwtPgTypeIdentifier (token identifier) not provided.) 
- create a postgraphile user and grant roles that need access (eg. GRANT public_backend TO postgraphile;)

## Issues
- need to restart to pick up schema changes (auto watch cannot be added because timescale cloud doesn't allow superuser access) 
- clashes when adding multiple schemas, eg. myenergy and flows (however workaround this easily with postgraphile comments on tables and functions, also at this stage only myenergy is required)

## Get Started

```sh
cp .env.example .env
docker compose up
```
