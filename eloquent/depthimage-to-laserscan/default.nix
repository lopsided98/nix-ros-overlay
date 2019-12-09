
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp-components, opencv3, rclcpp, ament-cmake-gtest, image-geometry }:
buildRosPackage {
  pname = "ros-eloquent-depthimage-to-laserscan";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/eloquent/depthimage_to_laserscan/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "f40b493e5f472d85e7718d99a86a153259eb24707eca5c4ba6738d969015ba67";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components opencv3 rclcpp image-geometry ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components opencv3 rclcpp image-geometry ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
