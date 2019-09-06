
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, example-interfaces, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-action-client";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_action_client/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "761e476a76b0c8a640872e75449f43229aef8822bedef1c3f472464b52d6505d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy example-interfaces ];

  meta = {
    description = ''Examples of minimal action clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
