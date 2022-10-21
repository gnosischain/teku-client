ARG UPSTREAM_VERSION
FROM consensys/teku:${UPSTREAM_VERSION}

COPY configs/chiado/config.yaml /usr/config.yaml
COPY configs/chiado/genesis.ssz /usr/genesis.ssz

ENTRYPOINT [ \
  "/opt/teku/bin/teku", \
  "--network=/usr/config.yaml", \
  "--initial-state=/usr/genesis.ssz", \
  "--p2p-discovery-bootnodes=enr:-Ly4QHj22gbLGiBP_kPXlWQTv0BTNIHTjb9NDu8QzgmPf4scOOS41E_YrrcKbkpdAR87Yru0zZA8PJ_j-af3TKByiQ8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGlmJc2VjcDI1NmsxoQPAo05A-JtbPBWygjdfC4KpWHBOuY609ePLxbcHfVOtkohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA", \
  "--p2p-discovery-bootnodes=enr:-LK4QN4NEavjPt7sJOfdcPKNucewHHxbtzdz5JCf_IRdsd58aIuix-9uIwSCc1TCfdi-j5HPunTxZ-TL10P4leQmGEEGh2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGnOJc2VjcDI1NmsxoQJ7PqgatnROjTufoEKhwgeKxUJyLOacw0odaF1KS7F-7oN0Y3CCIyiDdWRwgiMo", \
  "--p2p-discovery-bootnodes=enr:-MK4QNgIU4AT5AW0G0ldawIM2lYTX-gfNhZS4P8lIIuUQ8gUFjiAmT1P3tvAhTJx9y_UhfmEIqr4TYp0XcBtyXXN30-GAYOp2xB9h2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGlWJc2VjcDI1NmsxoQK6lyw9lNfW6JWN-4oTYYa1gJpcELc31R7pxWudCp8vsIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA==", \
  "--p2p-discovery-bootnodes=enr:-KG4QBHSWcjL-sdK83SPvRTmL1b175sS6LoXykFZ_hjzpJAFO6IUQ55vVX7uSU2_ZP6uH03Pxey_YC-mwro_VmNheg4DhGV0aDKQSOoWfAEAAG9aAAAAAAAAAIJpZIJ2NIJpcISqu5rviXNlY3AyNTZrMaED_dNGAGGvZHb85Uiho1aPhd11cwE4zmKdwbIy40qKYTuDdGNwgiMog3VkcIIjKA" \
]
