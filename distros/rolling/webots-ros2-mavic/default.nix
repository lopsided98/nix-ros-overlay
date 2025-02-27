
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-mavic";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_mavic/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "adfa50372233f660146c5d5e506dce00c9f93e42862322c8091ffc3d6772fcb4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = "Mavic 2 Pro robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
