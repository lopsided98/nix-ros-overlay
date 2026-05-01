
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rcl-interfaces, rclpy, ros2bag, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-launch-testing-examples";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/launch_testing_examples/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "0292a78d984f4a7cf50e2ad758a7e9035f043b00806a5a95c3813aa03751f2bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros python3Packages.pytest rcl-interfaces rclpy ros2bag std-msgs ];

  meta = {
    description = "Examples of simple launch tests";
    license = with lib.licenses; [ asl20 ];
  };
}
