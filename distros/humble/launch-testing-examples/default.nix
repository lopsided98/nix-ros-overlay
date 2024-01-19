
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2bag, rosbag2-transport, std-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-testing-examples";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/launch_testing_examples/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "76ec4b6913e2080b9adde1497f8ec286edc8b0bb9272d303553d8be93a32337d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros pythonPackages.pytest rclpy ros2bag rosbag2-transport std-msgs ];

  meta = {
    description = ''Examples of simple launch tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
