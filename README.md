# Teku Client - Docker

This projects builds a customized version of the prysm client with Gnosischain modifications.

Those include the integrations with different testnets.

## Image tagging 

Images are referenced under the following pattern. 

```
gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}
```

i.e.

```
docker pull gnosischain/teku:22.8.0-chiado 
```

The teku client we provide runs validator and beacon together.

## Dockerhub 

[Beacon image](https://hub.docker.com/repository/docker/gnosischain/teku)  


## More information on how the teku client works and can be customized can be found here:  

General  
https://docs.teku.consensys.net/en/latest/

CLI Reference  
https://docs.teku.consensys.net/en/latest/Reference/CLI/CLI-Syntax/


# Starting teku in beacon und validator mode
As an example we can run with version 22.8.0 in testnet chiado as beacon: 

```
docker pull gnosischain/teku:22.8.0-chiado  
docker run gnosischain/teku:22.8.0-chiado 
```

Customization through flags: 
```
docker run gnosischain/teku:22.8.0-chiado --enable-db-backup-webhook
```




