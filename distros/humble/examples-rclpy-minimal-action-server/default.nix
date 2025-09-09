
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-action-server";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_action_server/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "601eb150f3b33767e528334ad147c18c00da6981ff5ba3458fca785809ca74ee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
