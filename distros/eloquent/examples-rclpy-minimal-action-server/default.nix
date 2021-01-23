
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-minimal-action-server";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_minimal_action_server/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "1779ee2af670f0712817a089aa396614a5a8ebc27ec9f00f6f0e5758e4629321";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
