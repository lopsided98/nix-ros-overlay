
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-abb";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_abb/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "4938d92770d7f64c36de19087d1cabfc6939762ae23fdd31d0c16e0ba6ff612f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs sensor-msgs std-msgs trajectory-msgs webots-ros2-core ];

  meta = {
    description = ''ABB robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
