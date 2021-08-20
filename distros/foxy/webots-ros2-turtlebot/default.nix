
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, diff-drive-controller, joint-state-broadcaster, pythonPackages, rclpy, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-turtlebot";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_turtlebot/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "cdbd0cad4d4da8947e4cb3a7c880d9613b4da7fef97da583149bc7ce1624a542";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces diff-drive-controller joint-state-broadcaster rclpy webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''TurtleBot3 Burger robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
