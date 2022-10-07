
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-control, webots-ros2-core, webots-ros2-driver, webots-ros2-epuck, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-humble-webots-ros2";
  version = "2022.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2/2022.1.0-2.tar.gz";
    name = "2022.1.0-2.tar.gz";
    sha256 = "1f48a40a310ab6647fe07a805305e6e00389d2494dfdb60563b35135f95dde61";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-core webots-ros2-driver webots-ros2-epuck webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
