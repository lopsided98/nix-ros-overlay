
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-foxy-py-trees-ros";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/foxy/py_trees_ros/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "1c6cbab03fd44a3c03dd7e5901f4d3e9aa0cfacf756cd923d44ecc43be847c03";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs tf2-ros unique-identifier-msgs ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
