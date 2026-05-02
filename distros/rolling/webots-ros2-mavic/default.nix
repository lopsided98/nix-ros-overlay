
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-mavic";
  version = "2025.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_mavic/2025.0.1-2.tar.gz";
    name = "2025.0.1-2.tar.gz";
    sha256 = "4547fb49cac640ef37f1aa84b371e01d13e72edd432d35c4aae128d8b09070ff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = "Mavic 2 Pro robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
