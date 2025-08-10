#!/bin/bash

# Query allEscos from PostGraphile with JWT authentication

GRAPHQL_ENDPOINT="http://localhost:5000/graphql"

# role:public_backend
JWT_TOKEN=""

curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $JWT_TOKEN" \
  -d '{
    "query": "query { allEscos { nodes { id code} } }"
  }' \
  "$GRAPHQL_ENDPOINT"