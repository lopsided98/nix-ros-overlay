
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros-py";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros_py/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "d2ba1466757d28521c407f8bdca27555a88a0a63cfcf1844b2ff4fafe9a244fd";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = ''This package contains the ROS Python bindings for the tf2 library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
