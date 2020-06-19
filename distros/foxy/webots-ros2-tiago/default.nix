
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, rviz2, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tiago";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_tiago/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "80ddd1c285ca097bdf66391c8486da74c9fe8a64364d1fc1ef598e3f18a09e53";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rviz2 webots-ros2-core ];

  meta = {
    description = ''TIAGo robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
