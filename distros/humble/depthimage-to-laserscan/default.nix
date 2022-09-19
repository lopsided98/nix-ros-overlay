
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-depthimage-to-laserscan";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/humble/depthimage_to_laserscan/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "264167c62be2c48e22df9e97e206b3b0fa854b2377b11d54d0cdeb5dfc56bb3e";
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
