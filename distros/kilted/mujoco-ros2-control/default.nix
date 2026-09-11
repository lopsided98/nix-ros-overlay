
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-index-python, backward-ros, control-toolbox, controller-manager, eigen, fmt, geometry-msgs, git, glfw3, hardware-interface, mujoco-ros2-control-msgs, mujoco-ros2-control-plugins, mujoco-vendor, nav-msgs, pluginlib, python3, python3Packages, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2pkg, rosgraph-msgs, sensor-msgs, std-msgs, tinyxml2-vendor, transmission-interface, urdfdom-py }:
buildRosPackage {
  pname = "ros-kilted-mujoco-ros2-control";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/kilted/mujoco_ros2_control/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "ed69ee443786567db09e9a796e2e0b014b6c87dadfd7f413652a48182add39bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python git ros2-control-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python backward-ros control-toolbox controller-manager eigen fmt geometry-msgs glfw3 hardware-interface mujoco-ros2-control-msgs mujoco-ros2-control-plugins mujoco-vendor nav-msgs pluginlib python3 python3Packages.importlib-resources python3Packages.numpy python3Packages.pip python3Packages.pykdl rclcpp rclcpp-lifecycle realtime-tools ros2pkg rosgraph-msgs sensor-msgs std-msgs tinyxml2-vendor transmission-interface urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python git ];

  meta = {
    description = "ros2_control wrapper for the MuJoCo Simulate application";
    license = with lib.licenses; [ asl20 ];
  };
}
