
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, lidar-utils, rclcpp, rclcpp-lifecycle, sensor-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-dashing-voxel-grid-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "ac1f44df6402df132e906095d1fe2b31a6842fafd024a99d69b1517a31105e39";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lidar-utils rclcpp rclcpp-lifecycle sensor-msgs voxel-grid ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ "Apex.AI License" ];
  };
}
