
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-action-server";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_action_server/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "dcef54953038ed0c571858b05364a9c8cb0dfc15c06ba2b5e0ededaa20befa7c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
