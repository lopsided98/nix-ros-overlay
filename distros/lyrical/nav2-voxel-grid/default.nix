
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, nav2-common, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-nav2-voxel-grid";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_voxel_grid/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "8bde05dd71b547d2584d6632427009a48fde7b585b3c414274ed90b7bfb628ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "voxel_grid provides an implementation of an efficient 3D voxel grid. The occupancy grid can support 3 different representations for the state of a cell: marked, free, or unknown. Due to the underlying implementation relying on bitwise and and or integer operations, the voxel grid only supports 16 different levels per voxel column. However, this limitation yields raytracing and cell marking performance in the grid comparable to standard 2D structures making it quite fast compared to most 3D structures.";
    license = with lib.licenses; [ bsd3 ];
  };
}
