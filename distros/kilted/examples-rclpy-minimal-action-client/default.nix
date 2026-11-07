
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-examples-rclpy-minimal-action-client";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclpy_minimal_action_client/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "966197ecf2a798bed9877795063c294f7b5c3f99f4e6ad363f76fd6483870667";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
