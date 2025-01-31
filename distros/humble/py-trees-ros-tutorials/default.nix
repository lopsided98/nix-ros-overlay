
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, geometry-msgs, launch, launch-ros, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, qt5, rcl-interfaces, rclpy, ros2launch, ros2param, ros2run, ros2service, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-tutorials";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_tutorials-release/archive/release/humble/py_trees_ros_tutorials/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "82db36676ea238aa1a602aee7d2e34b82015e769c8d24837f9ee29ff14110e0e";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  checkInputs = [ action-msgs py-trees py-trees-ros python3Packages.pytest rclpy ];
  propagatedBuildInputs = [ action-msgs geometry-msgs launch launch-ros py-trees py-trees-ros py-trees-ros-interfaces python3Packages.pyqt5 rcl-interfaces rclpy ros2launch ros2param ros2run ros2service ros2topic sensor-msgs std-msgs ];

  meta = {
    description = "Tutorials for py_trees on ROS2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
