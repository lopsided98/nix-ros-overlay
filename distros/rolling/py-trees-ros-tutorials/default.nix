
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, geometry-msgs, launch, launch-ros, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, qt5, rcl-interfaces, rclpy, ros2launch, ros2param, ros2run, ros2service, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros-tutorials";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_tutorials-release/archive/release/rolling/py_trees_ros_tutorials/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "6efccfd2b8c97804c1975ee1996560863c28f12794ae6c334bc464ac4b4c9cf4";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyqt5 python3Packages.setuptools qt5.qttools.dev ];
  checkInputs = [ action-msgs py-trees py-trees-ros python3Packages.pytest rclpy ];
  propagatedBuildInputs = [ action-msgs geometry-msgs launch launch-ros py-trees py-trees-ros py-trees-ros-interfaces python3Packages.pyqtwebengine rcl-interfaces rclpy ros2launch ros2param ros2run ros2service ros2topic sensor-msgs std-msgs ];

  meta = {
    description = "Tutorials for py_trees on ROS2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
