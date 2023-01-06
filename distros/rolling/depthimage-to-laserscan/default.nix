
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-depthimage-to-laserscan";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/rolling/depthimage_to_laserscan/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "84cd8340acb7d745842db783ec231d1490ff5d63998a7d3713ad8bf6073dd6ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ image-geometry opencv rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
