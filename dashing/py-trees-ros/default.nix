
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, python3Packages, std-msgs, ros2topic, unique-identifier-msgs, py-trees, rcl-interfaces, rclpy, py-trees-ros-interfaces }:
buildRosPackage {
  pname = "ros-dashing-py-trees-ros";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/dashing/py_trees_ros/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "a46a34029b2af275f21b9809f97d69bb743c2c8589026fcdc1f161a15285ac91";
  };

  buildType = "ament_python";
  buildInputs = [ sensor-msgs std-msgs ros2topic unique-identifier-msgs py-trees rcl-interfaces python3Packages.setuptools rclpy py-trees-ros-interfaces ];
  propagatedBuildInputs = [ sensor-msgs std-msgs ros2topic unique-identifier-msgs py-trees rcl-interfaces rclpy py-trees-ros-interfaces ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
