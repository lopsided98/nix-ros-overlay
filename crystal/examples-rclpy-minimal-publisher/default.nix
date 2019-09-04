
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-publisher";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_publisher/0.6.3-0.tar.gz;
    sha256 = "e73863a26c3235c8cc139b24c6c5ad84925ce099534ccf09dcb933ea6c34dffb";
  };

  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
