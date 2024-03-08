
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, rcl-interfaces, rclpy, ros2bag, rosbag2-transport, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-examples";
  version = "0.19.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/launch_testing_examples/0.19.1-2.tar.gz";
    name = "0.19.1-2.tar.gz";
    sha256 = "04c942c6f22a58151f772cab8ffad9be46b83af88a33ddab5d0128b2a88d2377";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros pythonPackages.pytest rcl-interfaces rclpy ros2bag rosbag2-transport std-msgs ];

  meta = {
    description = ''Examples of simple launch tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
