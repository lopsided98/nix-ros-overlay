
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, std-msgs, vision-msgs, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-core";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_core/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "fc0e2e0ea1887ebf46ee6bde6bc478c9fc2a69c3c7da0ec69e0e0d6c59810175";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.tkinter rclpy std-msgs vision-msgs webots-ros2-msgs ];

  meta = {
    description = ''Core interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
