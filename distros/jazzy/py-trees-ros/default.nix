
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-py-trees-ros";
  version = "2.2.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/jazzy/py_trees_ros/2.2.2-4.tar.gz";
    name = "2.2.2-4.tar.gz";
    sha256 = "740f46c8f914a52b1343e9479b738e2e3481228051f060d928b6f2ecd3cd6ee5";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs tf2-ros-py unique-identifier-msgs ];

  meta = {
    description = "ROS2 extensions and behaviours for py_trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
