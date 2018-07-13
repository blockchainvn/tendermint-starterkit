nodes=(node1 node2 node3 node4)
for node in ${nodes[@]};do
  echo "Deleting $node data"  
  rm -rf ./nodes-kubernetes/$node/data
done