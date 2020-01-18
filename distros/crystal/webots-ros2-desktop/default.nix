
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-desktop";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_desktop/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "488c6d49806092cf4ecf8ca019ec93d5112e9ee6ebfd829c0e0b5ab80a213064";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
