
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, std-srvs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-py-trees-ros";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/kilted/py_trees_ros/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "16cec08358cb0fc7b11ce44ff83bc2a45c5e8c9331595e47b5c61059f67759ce";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs std-srvs tf2-ros-py unique-identifier-msgs ];

  meta = {
    description = "ROS2 extensions and behaviours for py_trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
