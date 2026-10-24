
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-rclpy-cascade-lifecycle";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/humble/rclpy_cascade_lifecycle/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "5ab982ade7585c4b28e99d8cf6364dc529520af41afa32484b77b553f9abc01d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclpy ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
