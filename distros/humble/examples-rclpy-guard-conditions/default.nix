
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-guard-conditions";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_guard_conditions/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "f6d0d58b4dd6f7bec82bb19430bc0aa184dd2c9f8d45f9fe0290540e6a595daf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = ''Examples of using guard conditions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
