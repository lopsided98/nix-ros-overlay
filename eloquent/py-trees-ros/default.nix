
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, python3Packages, std-msgs, ros2topic, pythonPackages, unique-identifier-msgs, py-trees, rcl-interfaces, rclpy, py-trees-ros-interfaces, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-py-trees-ros";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/eloquent/py_trees_ros/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "2d73aae0544a4eff6f9dbc94c8caf6937d20df47c194c50f68ceef981a3548be";
  };

  buildType = "ament_python";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs ros2topic unique-identifier-msgs py-trees rcl-interfaces python3Packages.setuptools rclpy py-trees-ros-interfaces tf2-ros ];
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs ros2topic unique-identifier-msgs py-trees rcl-interfaces rclpy py-trees-ros-interfaces tf2-ros ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
