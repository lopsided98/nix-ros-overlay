
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, ros2topic, sensor-msgs, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-dashing-py-trees-ros";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/dashing/py_trees_ros/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "a46a34029b2af275f21b9809f97d69bb743c2c8589026fcdc1f161a15285ac91";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ py-trees py-trees-ros-interfaces rcl-interfaces rclpy ros2topic sensor-msgs std-msgs unique-identifier-msgs ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
