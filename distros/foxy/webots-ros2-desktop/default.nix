
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-desktop";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_desktop/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "d0b3240769e8d71c93adc66e72dd8f640951a1c62a17ea10a37972a564ddcd8e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
