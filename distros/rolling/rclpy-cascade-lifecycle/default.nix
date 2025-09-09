
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cascade-lifecycle-msgs, lifecycle-msgs, python3Packages, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-rclpy-cascade-lifecycle";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/rclpy_cascade_lifecycle/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "369ddec3ab747401b5b262043652b217e9aef24892280e586b55bcdbfce0d7a1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes in python";
    license = with lib.licenses; [ asl20 ];
  };
}
