
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-eloquent-py-trees-ros";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/eloquent/py_trees_ros/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "1077877920d104ca6d6be08bb89dcbde36b78da735da5c347d2f172584664c9c";
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
