nodes=(node1 node2 node3 node4)
for node in ${nodes[@]};do
  echo "Reseting $node"
  rm -rf ./$node/data/*
  tendermint unsafe_reset_priv_validator --home ./$node
done