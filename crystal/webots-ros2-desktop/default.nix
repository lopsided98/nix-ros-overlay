
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, webots-ros2, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, builtin-interfaces, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-desktop";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_desktop/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "488c6d49806092cf4ecf8ca019ec93d5112e9ee6ebfd829c0e0b5ab80a213064";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs builtin-interfaces webots-ros2 rclpy ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
