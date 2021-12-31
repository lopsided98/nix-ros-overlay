
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pythonPackages, rclpy, ros2bag, rosbag2-storage-default-plugins, sensor-msgs, std-msgs, std-srvs, tf2-ros, webots-ros2-driver, webots-ros2-epuck, webots-ros2-mavic, webots-ros2-tesla, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-tests";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_tests/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "30cc6ff0810fce3df0d1fec414347262b42acd397efbe48322c592ce04835788";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2bag rosbag2-storage-default-plugins webots-ros2-driver ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros pythonPackages.pytest sensor-msgs std-msgs std-srvs tf2-ros webots-ros2-epuck webots-ros2-mavic webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = ''System tests for `webots_ros2` packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
