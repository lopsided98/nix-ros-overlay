
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, sensor-msgs, image-geometry, rclcpp, ament-cmake-ros, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-depthimage-to-laserscan";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/dashing/depthimage_to_laserscan/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "253b23005498cc6f3da173db6d23e56724d60ddd3debf5b72d520deb76fd388d";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs opencv3 rclcpp image-geometry ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs opencv3 rclcpp image-geometry ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
