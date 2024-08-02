
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, rcl-interfaces, rclpy, ros2bag, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-examples";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/launch_testing_examples/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "17795ad6e074221c909014f3240062fe97e9a7f91cfc5e2605e8dbf1c835052f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros pythonPackages.pytest rcl-interfaces rclpy ros2bag std-msgs ];

  meta = {
    description = "Examples of simple launch tests";
    license = with lib.licenses; [ asl20 ];
  };
}
