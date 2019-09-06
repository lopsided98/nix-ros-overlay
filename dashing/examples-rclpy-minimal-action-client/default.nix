
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, example-interfaces, ament-pep257, ament-copyright }:
buildRosPackage rec {
  pname = "ros-dashing-examples-rclpy-minimal-action-client";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_action_client/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "39d19477addf84cd7fface4ee81f5808286f2e9d7d2db445d386ec5e7840206b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy example-interfaces ];

  meta = {
    description = ''Examples of minimal action clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
