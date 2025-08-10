# simt-postgraphile

## Issues
- need to restart to pick up schema changes (auto watch cannot be added because timescale cloud doesn't allow superuser access) 
- clashes when adding multiple schemas, eg. myenergy and flows (however workaround this easily with postgraphile comments on tables and functions, also at this stage only myenergy is required)

## Get Started

```sh
cp .env.example .env
docker compose up
```
