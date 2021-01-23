
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-executors";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_executors/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "1f865047946fb1066b4d02fd4aadf9ee5e32f8d76738884037dcac7570626068";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}
