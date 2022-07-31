
# Starting the container in beacon mode 
```
--network="/custom_config_data/config.yaml"
--initial-state="/custom_config_data/genesis.ssz"
--p2p-discovery-bootnodes="{{ bootnode_enrs | join(',') }}"

```

# Starting the container in validator mode
```
--network="/custom_config_data/config.yaml"

docker run -- (TO BE CONTINUED)

```