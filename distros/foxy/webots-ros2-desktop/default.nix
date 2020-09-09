
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "10d71602ef6b4d65f7c5f801f8b2ced0d7c7f0922cfb2ad31ec03b2e1d62dfc3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
