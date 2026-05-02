
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-rclpy-cascade-lifecycle";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/rclpy_cascade_lifecycle/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "d1fde28160d07b7831b1edcf2750e53d4b7edf36dbdbc51323ad7a4d98d01a70";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
