
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "debed883f2defd718e4e7ec5498e1f81a731b46b57beac413e3730465bb969cc";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
