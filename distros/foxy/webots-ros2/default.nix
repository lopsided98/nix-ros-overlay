
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-demos, webots-ros2-epuck, webots-ros2-examples, webots-ros2-importer, webots-ros2-msgs, webots-ros2-tiago, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a40ab2ca33c55bc9a1ed57e8de282d52fb90d15bc637bda603c04d906e300d35";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-demos webots-ros2-epuck webots-ros2-examples webots-ros2-importer webots-ros2-msgs webots-ros2-tiago webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
