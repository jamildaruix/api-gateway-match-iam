#!/bin/bash
URL="http://localhost:8080/auth/realms/airfare/protocol/openid-connect/token/introspect"
TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJaRVlGZWRJSVNSSldhTVhLTlRwS25saDQwMjh4VVY5R0xTQVZPQWhycE1nIn0.eyJleHAiOjE2OTk4MzkwMjQsImlhdCI6MTY5OTgwMzAyNCwianRpIjoiMmUzY2E1NzYtNWJhNS00MGY5LWE1MjItMDA3YTAzZTVlNThjIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2F1dGgvcmVhbG1zL2FpcmZhcmUiLCJhdWQiOlsiY2xpZW50LWFpcmZhcmUiLCJhY2NvdW50Il0sInN1YiI6IjEwMWI0MTQ0LWFmOWUtNGVlNC05NTcxLTU0ZGJiYjg5MDAwOCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImNsaWVudC1haXJmYXJlIiwic2Vzc2lvbl9zdGF0ZSI6IjEzNTUzNzBhLTIzNzItNGI5Yi04MzUwLTc0Y2I5NTBlZDA0MyIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsiZGVmYXVsdC1yb2xlcy1haXJmYXJlIiwib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgY2xpZW50LXNjb3BlLWFpcmZhcmUgcHJvZmlsZSIsInNpZCI6ImE1NmQ0OWY1LWI1MDItNGE0MS04NWYyLTIzNzU0YzFiYWEzOSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6InVzZXIgdGVzdGUiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJ1c2VyLWFpcmZhcmUiLCJnaXZlbl9uYW1lIjoidXNlciIsImZhbWlseV9uYW1lIjoidGVzdGUifQ.FdXEsjejUMaYG4IKIarlzwVmpyGOjMWlWwevLpG-RRHlM_tnU3aUfgey4EWtgadtw4gHAcSX91JBhrhXUpIcodf_tlODwmtIUmtcSJp28xlFsFw0QSJOLitNPnkM0OxRbrWM1hn__rMHPX4hpG7tZ0xt4LGhb7xm7HXj5xt67wYg3bsYvvuiBIwL3L4DE5p6vptgp6N9UKg-c2Bb2cBUzexiq2FkclvUIORRXwByZQLuXsLOEJ865epASxkCVuUdHKBu2ohgGYfVnf012oqYmvLRw3W4TBdGd6Okko2TJQqsVUP46kpQHkrhVtNgI0qbRD-H7Brdbn2m-sUxlHm_2A"
CLIENT_ID="client-airfare"
CLIENT_SECRET="ceH6XMBIkqUyLJMRDZIsjPe1cu0lZ0jG"

echo "URL: $URL"
echo "TOKEN: $TOKEN"
echo "CLIENT_ID: $CLIENT_ID"
echo "CLIENT_SECRET: $CLIENT_SECRET"

echo "Executando o primeiro curl para o endpoint 
     protocol/openid-connect/token/introspect passando o token gerado e assim inspecionar 
     os tokens de acesso validando o token e obter informaçoes necessárias."

curl --location "$URL" \
     --header 'Content-Type: application/x-www-form-urlencoded' \
     --data-urlencode "token=$TOKEN" \
     --data-urlencode "client_id=$CLIENT_ID" \
     --data-urlencode "client_secret=$CLIENT_SECRET"

echo "Executando o secundo curl para o endpoint 
     .well-known/openid-configuration usado para descobrir as configurações de um provedor de identidade 
     para a autenticação usando o protocolo OpenID Connect."

curl http://keycloak:8080/auth/realms/airfare/.well-known/openid-configuration
