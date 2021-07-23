
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tesla";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_tesla/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ea2c7a201cb2ac8fd573635af2cc6be7cf3abd45e11c5960bb50ac174e16d38f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces rclpy webots-ros2-core ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
