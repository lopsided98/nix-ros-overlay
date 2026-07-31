
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-rclpy-cascade-lifecycle";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/lyrical/rclpy_cascade_lifecycle/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "671bceccca06eb9f58c870bf42e5f0433ef6db4225ce56c05cb6ac08d8e0e84a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclpy ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
