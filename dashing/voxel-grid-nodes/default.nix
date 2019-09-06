
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, ament-lint-common, ament-cmake-pclint, sensor-msgs, voxel-grid, rclcpp, autoware-auto-cmake, lidar-utils }:
buildRosPackage rec {
  pname = "ros-dashing-voxel-grid-nodes";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid_nodes/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "e142520a6f8ffd3057236d401497ec433c2557a5659975fbb1daccc539811461";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle sensor-msgs voxel-grid rclcpp lidar-utils ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ rclcpp-lifecycle sensor-msgs voxel-grid rclcpp lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ "Apex.AI License" ];
  };
}
