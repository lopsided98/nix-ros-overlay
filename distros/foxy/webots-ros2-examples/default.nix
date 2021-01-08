
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-examples";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_examples/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "68913359f8957b4cdf13f94f2658a0421c9a0bf8d340bef52cf76c786d02eb91";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''Minimal example showing how to control a robot with ROS2 in Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
