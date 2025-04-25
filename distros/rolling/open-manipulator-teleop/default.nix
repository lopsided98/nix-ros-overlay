
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-teleop";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_teleop/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "2c0f6692448882c0f796ec98639fb7bdec70f1d207075c8703096f428492fcf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
