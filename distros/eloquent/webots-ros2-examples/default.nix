
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-examples";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_examples/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "758c91929aa036ac64d8ec314ec2a3b67f24ddbb0d290170192b1b0a7ec0be16";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''Minimal example showing how to control a robot with ROS2 in Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
