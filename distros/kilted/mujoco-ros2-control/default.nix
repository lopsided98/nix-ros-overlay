
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, backward-ros, control-toolbox, controller-manager, glfw3, hardware-interface, mujoco-ros2-control-msgs, mujoco-vendor, nav-msgs, pluginlib, python3, python3Packages, rclcpp, rclcpp-lifecycle, ros2-control-cmake, sensor-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kilted-mujoco-ros2-control";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/kilted/mujoco_ros2_control/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "80c0a17b38fe1ce3c991cadc737d8469706d5b3d3bcbefe54892982216441dc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ backward-ros control-toolbox controller-manager glfw3 hardware-interface mujoco-ros2-control-msgs mujoco-vendor nav-msgs pluginlib python3 python3Packages.pip python3Packages.pykdl rclcpp rclcpp-lifecycle sensor-msgs transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control wrapper for the MuJoCo Simulate application";
    license = with lib.licenses; [ asl20 ];
  };
}
