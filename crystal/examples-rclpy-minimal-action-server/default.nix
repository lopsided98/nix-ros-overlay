
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, ament-copyright, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-action-server";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_action_server/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "a1640fec00489dbe9a6832ba1fa9924bdb09eff1dabc721a035b028a9f15608d";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
