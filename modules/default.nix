{ ... }:
{
  imports = [
    ./common.nix
    ./ros1/core.nix
    ./ros1/ros.nix
    ./ros1/nodes.nix
    ./ros2/ros.nix
    ./ros2/nodes.nix
  ];
}
