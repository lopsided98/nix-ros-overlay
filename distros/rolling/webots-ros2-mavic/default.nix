
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-mavic";
  version = "2023.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_mavic/2023.1.1-2.tar.gz";
    name = "2023.1.1-2.tar.gz";
    sha256 = "740f79cd47689b2d80f8874ab024ecce1c8bf7cd694658e0aa192bb76acad109";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = ''Mavic 2 Pro robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
