
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, geometry-msgs, launch, launch-ros, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, qt5, rcl-interfaces, rclpy, ros2launch, ros2param, ros2run, ros2service, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-tutorials";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_tutorials-release/archive/release/humble/py_trees_ros_tutorials/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "259af89820c0f966fc9fe77fe01c614be48a739fbb7e47b5c6599f0cc1096c2f";
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
