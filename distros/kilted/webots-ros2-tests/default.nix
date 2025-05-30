
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, ros2bag, rosbag2-storage-default-plugins, sensor-msgs, std-msgs, std-srvs, tf2-ros, webots-ros2-driver, webots-ros2-epuck, webots-ros2-husarion, webots-ros2-mavic, webots-ros2-tesla, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-tests";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_tests/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "2732a962e630474176da6ccc7215d2445dd4a744a799d581881a63bcd9e4c2b7";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2bag rosbag2-storage-default-plugins webots-ros2-driver ];
  checkInputs = [ ament-copyright geometry-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.pytest sensor-msgs std-msgs std-srvs tf2-ros webots-ros2-epuck webots-ros2-husarion webots-ros2-mavic webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = "System tests for `webots_ros2` packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
