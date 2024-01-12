
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-iron-py-trees-ros";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/iron/py_trees_ros/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "10f5eff6abe124b6907045b4c7c5e7053e8a2e41da49b261379ff43ba5d28521";
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
