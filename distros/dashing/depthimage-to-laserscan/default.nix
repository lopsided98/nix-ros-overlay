
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv3, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-depthimage-to-laserscan";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/dashing/depthimage_to_laserscan/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "9429cdd4e2bb800cf5fda03e12524e4afc7410e8563db1aca2b1b0766a471423";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ image-geometry opencv3 rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
