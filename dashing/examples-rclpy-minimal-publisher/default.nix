
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-publisher";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_publisher/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "08eacbbe87b41a7ca4af9516bdcfe025632a3855fd530f6056ca8650a4940d84";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
