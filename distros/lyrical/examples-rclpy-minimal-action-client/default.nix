
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclpy-minimal-action-client";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclpy_minimal_action_client/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "8c905784b8b4f7d58dc95259705d4be8870a3f4665cb68b92ed867ab6fcb4878";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
