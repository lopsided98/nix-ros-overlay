
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-desktop";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_desktop/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "345687687ea0bbe2e8a6f9bacbfa366575140bd90c65ffe3823a1a670ac1615f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
