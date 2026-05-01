
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-rclpy-cascade-lifecycle";
  version = "2.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/lyrical/rclpy_cascade_lifecycle/2.0.4-3.tar.gz";
    name = "2.0.4-3.tar.gz";
    sha256 = "a5333cefb0f3fb5e7bfa36f488846f3d29e348d968a30bfc05f805a25581fa5f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
