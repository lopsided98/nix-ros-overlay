
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-action-server";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_action_server/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "33e391905c18dd6994de3a48132c697b9251e0b0f24a0e8f2664ad88d024ba21";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
