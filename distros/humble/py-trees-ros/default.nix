
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, py-trees, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, tf2-ros, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros-release/archive/release/humble/py_trees_ros/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "aeec328390cd3d790e79f8597fddeed3d2ea25b219547d9a30513f1e1b865836";
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
