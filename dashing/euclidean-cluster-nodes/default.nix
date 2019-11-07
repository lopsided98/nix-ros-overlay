
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, sensor-msgs, autoware-auto-msgs, autoware-auto-geometry, voxel-grid-nodes, rclcpp, ament-lint-auto, euclidean-cluster, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-euclidean-cluster-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/euclidean_cluster_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "156ca57d67726895c9fa84d0d67ca3b67de9bd48fd7446e4842e4660f35520e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs autoware-auto-msgs autoware-auto-geometry voxel-grid-nodes rclcpp euclidean-cluster ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs autoware-auto-msgs autoware-auto-geometry voxel-grid-nodes rclcpp euclidean-cluster ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''ROS 2 nodes for various post-processing steps on euclidean clustering. For debugging and to
      decouple algorithm dependencies from ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
