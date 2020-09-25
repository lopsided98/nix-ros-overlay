
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-demos, webots-ros2-epuck, webots-ros2-examples, webots-ros2-importer, webots-ros2-msgs, webots-ros2-tiago, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3d1f60ba956273db5242211bf5fded5896199452efdf945dbd3e39237ccdc8ec";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-demos webots-ros2-epuck webots-ros2-examples webots-ros2-importer webots-ros2-msgs webots-ros2-tiago webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
