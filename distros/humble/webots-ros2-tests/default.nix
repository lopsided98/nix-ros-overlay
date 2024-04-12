
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pythonPackages, rclpy, ros2bag, rosbag2-storage-default-plugins, sensor-msgs, std-msgs, std-srvs, tf2-ros, webots-ros2-driver, webots-ros2-epuck, webots-ros2-mavic, webots-ros2-tesla, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-tests";
  version = "2023.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_tests/2023.1.2-1.tar.gz";
    name = "2023.1.2-1.tar.gz";
    sha256 = "b31742a532868a1250853f3d22e19677e07f5f0bc138a502041876a74c82cde3";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2bag rosbag2-storage-default-plugins webots-ros2-driver ];
  checkInputs = [ ament-copyright geometry-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros pythonPackages.pytest sensor-msgs std-msgs std-srvs tf2-ros webots-ros2-epuck webots-ros2-mavic webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = "System tests for `webots_ros2` packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
