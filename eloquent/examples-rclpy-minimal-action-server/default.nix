
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-minimal-action-server";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_minimal_action_server/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "f1917e9d2b5521f3123133fca5332041df3fea0d9fb280209ae5d832b925ea99";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
