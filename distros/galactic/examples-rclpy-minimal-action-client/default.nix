
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-galactic-examples-rclpy-minimal-action-client";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/galactic/examples_rclpy_minimal_action_client/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "aad0f1021c25bee23b8117aac728f11f6fc92a812ca0a34178aaa006f39499f5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
