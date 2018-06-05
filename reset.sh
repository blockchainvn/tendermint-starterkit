is_local=${1:-false}
nodes=(node1 node2 node3 node4)
for node in ${nodes[@]};do
  echo "Reseting $node"  
  if [ "$is_local" == "true" ];then
    tendermint unsafe_reset_all --home ./$node
  else
    docker-compose exec $node tendermint unsafe_reset_all --home /tendermint
  fi
done