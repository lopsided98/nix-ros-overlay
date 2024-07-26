
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-executors";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_executors/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "4816838fa9128dc3c34547d68b4b3d5ee370cc649d9ea66e70a8e27c44ab657f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
