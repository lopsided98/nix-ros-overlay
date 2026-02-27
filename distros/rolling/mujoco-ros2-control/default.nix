
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, backward-ros, control-toolbox, controller-manager, glfw3, hardware-interface, mujoco-ros2-control-msgs, mujoco-vendor, nav-msgs, pluginlib, python3, python3Packages, rclcpp, rclcpp-lifecycle, ros2-control-cmake, sensor-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-rolling-mujoco-ros2-control";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/rolling/mujoco_ros2_control/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "924a7cb0136fcdc6de9107e234a907dd7c4d4554bd638102ba796d22bfc74cd9";
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
