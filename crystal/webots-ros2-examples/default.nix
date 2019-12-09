
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, webots-ros2-msgs, sensor-msgs, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, builtin-interfaces, ament-flake8, webots-ros2-core }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-examples";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_examples/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "ccab36e0a04439bf43ec4101380c356d5fa7a6a6419e783ccea93fa20f56a1f2";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ webots-ros2-msgs sensor-msgs std-msgs rclpy builtin-interfaces webots-ros2-core ];

  meta = {
    description = ''Minimal example showing how to control a robot with ROS2 in Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
