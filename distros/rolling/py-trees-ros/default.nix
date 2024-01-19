
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/rolling/py_trees_ros/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "c63566f18be926a8edd92172cc0b554295205b93fc76135c7927c339c97986fe";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs tf2-ros-py unique-identifier-msgs ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
