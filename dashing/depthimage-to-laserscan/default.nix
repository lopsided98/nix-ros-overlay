
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, sensor-msgs, image-geometry, rclcpp, ament-cmake-ros, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-depthimage-to-laserscan";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/dashing/depthimage_to_laserscan/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "3754a6690a4baf16e3b83b109c3121cad2abb2d6887ba6308a9762dd6a07dafa";
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
