
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-demos";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_demos/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "22b4b1108f7b4d3b82c6c910862ac38aa9ee690c6bd9729f1c1b25bbc97d85e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-universal-robot ];

  meta = {
    description = ''Various demos of the Webots-ROS2 interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
