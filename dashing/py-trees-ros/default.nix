
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-identifier-msgs, rclpy, py-trees, sensor-msgs, py-trees-ros-interfaces, python3Packages, std-msgs, ros2topic }:
buildRosPackage rec {
  pname = "ros-dashing-py-trees-ros";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/dashing/py_trees_ros/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "f29be30ebcf153c16ef3fe12a1dad40b2cb9ce7a6c7b1f0f14313507a863f5a4";
  };

  buildType = "ament_python";
  buildInputs = [ unique-identifier-msgs rclpy ros2topic sensor-msgs python3Packages.setuptools py-trees-ros-interfaces std-msgs py-trees ];
  propagatedBuildInputs = [ unique-identifier-msgs rclpy ros2topic sensor-msgs py-trees-ros-interfaces std-msgs py-trees ];

  meta = {
    description = ''ROS2 extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
