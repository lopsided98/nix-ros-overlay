
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-examples-rclpy-minimal-action-client";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclpy_minimal_action_client/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "0c8dd264d3b7604bade513f52ee40cd45e289f1d7004ab2782f4af34df14f261";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
