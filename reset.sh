nodes=(node1 node2 node3 node4)
for node in ${nodes[@]};do
  echo "Reseting $node"  
  tendermint unsafe_reset_all --home ./$node
done