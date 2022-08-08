# Teku Client - Docker

This projects builds a customized version of the Teku client with Gnosischain modifications. Those include the integrations with different testnets.

- [gnosischain/teku](https://hub.docker.com/repository/docker/gnosischain/teku)

Images are referenced under the following pattern `gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}` for example

```
docker pull gnosischain/teku:latest-chiado
```

## Teku reference:

- General https://docs.teku.consensys.net/en/latest/
- CLI Reference https://docs.teku.consensys.net/en/latest/Reference/CLI/CLI-Syntax/

# Starting Teku in Chiado testnet

1. Add an `.env` file with your fee recepient and graffiti

```
FEE_RECIPIENT=0x0000000000000000000000000000000000000000
GRAFFITI=gnosischain/teku
```

2. Add your keystores in `./validator-data` and their password in a files with the same name to get this file structure:

```
.
├── docker-compose.yml
├── .env
├── jwtsecret
└── validator-data
    ├── keys
    │   └── keystore-001.json
    └── secrets
        └── keystore-001.txt
```

3. Create a new `./jwtsecret` token

```
echo -n 0x$(openssl rand -hex 32 | tr -d "\n") > ./jwtsecret
```

4. Start `docker-compose.yml` services from this repository

```
docker-compose up -d
```
