
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-action-client";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_action_client/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "d88e44e7a8ca29969c7e698da19264ea34110c567a2f4a3318a5e400756e8c1a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
