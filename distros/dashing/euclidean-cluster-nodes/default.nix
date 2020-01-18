
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, autoware-auto-cmake, autoware-auto-geometry, autoware-auto-msgs, euclidean-cluster, rclcpp, sensor-msgs, voxel-grid-nodes }:
buildRosPackage {
  pname = "ros-dashing-euclidean-cluster-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/euclidean_cluster_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "156ca57d67726895c9fa84d0d67ca3b67de9bd48fd7446e4842e4660f35520e0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-geometry autoware-auto-msgs euclidean-cluster rclcpp sensor-msgs voxel-grid-nodes ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''ROS 2 nodes for various post-processing steps on euclidean clustering. For debugging and to
      decouple algorithm dependencies from ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
