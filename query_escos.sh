#!/bin/bash

# Query allEscos from PostGraphile with JWT authentication

GRAPHQL_ENDPOINT="http://localhost:5000/graphql"

# role:public_backend - bec instance
JWT_TOKEN="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhcHBfbWV0YWRhdGEiOnsiY2Vwcm9fdXNlciI6ZmFsc2V9LCJleHAiOjE3NjI0MDYxNjEsImlhdCI6MTc1Mzc2NjE2MSwiaXNzIjoiY2Vwcm8uZW5lcmd5Iiwicm9sZSI6InB1YmxpY19iYWNrZW5kIiwic3ViIjoiNTViNzZiYmYtYmM0Yy00OGJhLTlkYTItZjQ2Yzk3ZmE0MjcwIn0.Xewkj-MBlkU7bFxTVf6zbjLFGLGKbskHGfsqim34Jo8"

curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $JWT_TOKEN" \
  -d '{
    "query": "query { allEscos { nodes { id } } }"
  }' \
  "$GRAPHQL_ENDPOINT"