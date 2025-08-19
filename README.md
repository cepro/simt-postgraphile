# simt-postgraphile

## Overview

Use this repo to start up a local instance of postgraphile with our setup.

See supabase-host repo and fly/postgraphile for how the deployed version is configured.

## Get Started

```sh
cp .env.example .env
docker compose up
```

## Issues
- need to restart to pick up schema changes (auto watch cannot be added because timescale cloud doesn't allow superuser access) 
