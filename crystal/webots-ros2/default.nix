
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, webots-ros2-universal-robot, ament-flake8, rclpy, pythonPackages, ament-copyright, ament-pep257, std-msgs, webots-ros2-core, webots-ros2-examples }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2/0.0.2-1.tar.gz;
    sha256 = "0725803da2fd33fcdd3a5c0e78bcea930a93b62cd660bc8c6d327158d357dd46";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ builtin-interfaces webots-ros2-universal-robot rclpy std-msgs webots-ros2-core webots-ros2-examples ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
