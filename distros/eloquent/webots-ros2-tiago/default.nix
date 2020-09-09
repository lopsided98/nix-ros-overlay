
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, rviz2, webots-ros2-core }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-tiago";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_tiago/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e45aed3cd7c5464f792b6e5bf15fafe37bb685ac44313803e799d28396457871";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rviz2 webots-ros2-core ];

  meta = {
    description = ''TIAGo robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
