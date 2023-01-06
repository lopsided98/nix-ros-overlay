
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2node";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2node/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "17390f979eafb37ff2722e5ce2e93fbe614555b96a7f3f17a236299107f0e76c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest rclpy test-msgs ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The node command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
