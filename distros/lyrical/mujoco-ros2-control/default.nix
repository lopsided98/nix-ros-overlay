
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-index-python, backward-ros, control-toolbox, controller-manager, eigen, fmt, geometry-msgs, git, glfw3, hardware-interface, mujoco-ros2-control-msgs, mujoco-ros2-control-plugins, mujoco-vendor, nav-msgs, pluginlib, python3, python3Packages, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2pkg, rosgraph-msgs, sensor-msgs, std-msgs, tinyxml-2, transmission-interface, urdfdom-py }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-ros2-control";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/lyrical/mujoco_ros2_control/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "2d3dfaf4ee6c389eea402a935daad5a3df33144f50310108c20f2868e2be3bc7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python git ros2-control-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python backward-ros control-toolbox controller-manager eigen fmt geometry-msgs glfw3 hardware-interface mujoco-ros2-control-msgs mujoco-ros2-control-plugins mujoco-vendor nav-msgs pluginlib python3 python3Packages.importlib-resources python3Packages.numpy python3Packages.pip python3Packages.pykdl rclcpp rclcpp-lifecycle realtime-tools ros2pkg rosgraph-msgs sensor-msgs std-msgs tinyxml-2 transmission-interface urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python git ];

  meta = {
    description = "ros2_control wrapper for the MuJoCo Simulate application";
    license = with lib.licenses; [ asl20 ];
  };
}
