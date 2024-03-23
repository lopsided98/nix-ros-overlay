
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/rolling/py_trees_ros/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "3c6fa3434c8d89a0eec1df8cee79dfac735452c9d3154975eb216bd1a4993577";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs tf2-ros-py unique-identifier-msgs ];

  meta = {
    description = "ROS2 extensions and behaviours for py_trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
