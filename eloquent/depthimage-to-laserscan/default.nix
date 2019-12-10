
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv3, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-depthimage-to-laserscan";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/eloquent/depthimage_to_laserscan/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "f40b493e5f472d85e7718d99a86a153259eb24707eca5c4ba6738d969015ba67";
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
