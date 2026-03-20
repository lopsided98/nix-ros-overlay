
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, backward-ros, control-toolbox, controller-manager, fmt, git, glfw3, hardware-interface, mujoco-ros2-control-msgs, mujoco-ros2-control-plugins, mujoco-vendor, nav-msgs, pluginlib, python3, python3Packages, rclcpp, rclcpp-lifecycle, ros2-control-cmake, sensor-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-jazzy-mujoco-ros2-control";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/jazzy/mujoco_ros2_control/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "bf9767443f739b75b78815532e0b2ede5841d5efc18c66b7be459d48a27fbfdb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python git ros2-control-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ backward-ros control-toolbox controller-manager fmt glfw3 hardware-interface mujoco-ros2-control-msgs mujoco-ros2-control-plugins mujoco-vendor nav-msgs pluginlib python3 python3Packages.pip python3Packages.pykdl rclcpp rclcpp-lifecycle sensor-msgs transmission-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python git ];

  meta = {
    description = "ros2_control wrapper for the MuJoCo Simulate application";
    license = with lib.licenses; [ asl20 ];
  };
}
