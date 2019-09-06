
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-pclint, sensor-msgs, autoware-auto-msgs, voxel-grid-nodes, rclcpp, euclidean-cluster, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-euclidean-cluster-nodes";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/euclidean_cluster_nodes/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "028ffed712d9163b273870f40e1ca519eb686c600db062d0ae8a1fba27c4e7fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs autoware-auto-msgs voxel-grid-nodes rclcpp euclidean-cluster ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ sensor-msgs autoware-auto-msgs voxel-grid-nodes rclcpp euclidean-cluster ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''ROS 2 nodes for various post-processing steps on euclidean clustering. For debugging and to
      decouple algorithm dependencies from ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
