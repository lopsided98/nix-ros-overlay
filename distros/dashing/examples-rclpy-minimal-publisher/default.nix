
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-publisher";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_publisher/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "7d52dc1d8154b72f8c68c75e791a97008762d6254c0646335b76a3b7c92d8f8c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
