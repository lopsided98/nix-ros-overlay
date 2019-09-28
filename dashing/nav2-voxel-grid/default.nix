
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-voxel-grid";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_voxel_grid/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "117025364a2f8697eaf46da64b2c589f080c0a0a48ff6fa3ce7ce8594a57fc6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''voxel_grid provides an implementation of an efficient 3D voxel grid. The occupancy grid can support 3 different representations for the state of a cell: marked, free, or unknown. Due to the underlying implementation relying on bitwise and and or integer operations, the voxel grid only supports 16 different levels per voxel column. However, this limitation yields raytracing and cell marking performance in the grid comparable to standard 2D structures making it quite fast compared to most 3D structures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
