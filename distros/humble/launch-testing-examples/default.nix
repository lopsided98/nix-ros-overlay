
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2bag, rosbag2-transport, std-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-testing-examples";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/launch_testing_examples/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "106b547189ed144baa6a536a7a8818072262ed63e2925dcc417e4fb01e216d70";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros pythonPackages.pytest rclpy ros2bag rosbag2-transport std-msgs ];

  meta = {
    description = "Examples of simple launch tests";
    license = with lib.licenses; [ asl20 ];
  };
}
