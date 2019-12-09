
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp-lifecycle, lidar-utils, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-cmake-gtest, voxel-grid, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-voxel-grid-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "ac1f44df6402df132e906095d1fe2b31a6842fafd024a99d69b1517a31105e39";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-lifecycle lidar-utils voxel-grid rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-lifecycle lidar-utils voxel-grid rclcpp ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ "Apex.AI License" ];
  };
}
