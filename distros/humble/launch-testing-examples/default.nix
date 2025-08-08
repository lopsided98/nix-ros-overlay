
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rcl-interfaces, rclpy, ros2bag, std-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-testing-examples";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/launch_testing_examples/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "8f069f2f1a8ea351f06c917b13c638db9413a8fc224b8043e25af35a54a7da95";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros python3Packages.pytest rcl-interfaces rclpy ros2bag std-msgs ];

  meta = {
    description = "Examples of simple launch tests";
    license = with lib.licenses; [ asl20 ];
  };
}
