
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rcl-interfaces, rclpy, ros2bag, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-examples";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/launch_testing_examples/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "4652ade7d90e3e5083bc001147d79a8211a23ba546e317a56879aebd447918f0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros python3Packages.pytest rcl-interfaces rclpy ros2bag std-msgs ];

  meta = {
    description = "Examples of simple launch tests";
    license = with lib.licenses; [ asl20 ];
  };
}
