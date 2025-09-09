
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-rclpy-cascade-lifecycle";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/kilted/rclpy_cascade_lifecycle/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "5f986ba8055cab407aca342c9c184f6425389ee0abfe3043cdbaee6ee6feec6c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
