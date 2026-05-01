
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, std-srvs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-ros";
  version = "2.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/lyrical/py_trees_ros/2.4.0-4.tar.gz";
    name = "2.4.0-4.tar.gz";
    sha256 = "4538f1b8b1812070e4428bdd19a5cc528c3d12128a47a977088ee0f23974e144";
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
