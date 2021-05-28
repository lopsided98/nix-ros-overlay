
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-demos";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_demos/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "a227c4fa5f895ac200f3eaeab437545b927528f668806651f7d911a71a963a61";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-universal-robot ];

  meta = {
    description = ''Various demos of the Webots-ROS2 interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
