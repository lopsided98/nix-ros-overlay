
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, std-srvs, tf2-ros-py, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-ros";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/lyrical/py_trees_ros/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "a70d6ad0b99334eaf5840d9c0981b2d8324c094e2e5a78c795c6911a8a5fe2b0";
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
