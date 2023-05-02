
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-depthimage-to-laserscan";
  version = "2.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/rolling/depthimage_to_laserscan/2.5.0-4.tar.gz";
    name = "2.5.0-4.tar.gz";
    sha256 = "c1f2c09c2d03cb48adc16b12f712f1e6d1cbaa3891b085e9d253128f23228383";
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
