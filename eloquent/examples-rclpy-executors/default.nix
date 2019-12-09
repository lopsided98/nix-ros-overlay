
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-executors";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_executors/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "86db4f103a1d90cfb2d6f426ac0e0a92c1bce9a84d896028e1fb8e29d2f03ff1";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}
