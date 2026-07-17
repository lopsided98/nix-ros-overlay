
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, std-srvs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-py-trees-ros";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/kilted/py_trees_ros/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "3cb332909ce10ee8e63662cf75173558326c032177abce26f63e0f43ba87ffc6";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs std-srvs tf2-ros-py unique-identifier-msgs ];

  meta = {
    description = "ROS 2 extensions and behaviours for py_trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
