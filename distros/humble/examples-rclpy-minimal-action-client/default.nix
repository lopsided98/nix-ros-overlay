
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-action-client";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_action_client/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "28a8cfa804509e5d670225b6493542ce1e68b778a60e011b1d0c1fd86f43e5ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
