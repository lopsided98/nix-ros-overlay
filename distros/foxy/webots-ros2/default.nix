
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-control, webots-ros2-core, webots-ros2-driver, webots-ros2-epuck, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "6add95339b331f0aa1b8b8708084afc88f0081577b865b51ab3165d6d04e70e8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-core webots-ros2-driver webots-ros2-epuck webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
