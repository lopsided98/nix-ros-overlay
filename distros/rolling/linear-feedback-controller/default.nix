
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, control-toolbox, controller-interface, eigen, fmt, generate-parameter-library, gmock-vendor, gtest-vendor, hardware-interface, jrl-cmakemodules, linear-feedback-controller-msgs, message-filters, nav-msgs, pal-statistics, parameter-traits, pinocchio, pluginlib, rcl, rclcpp, rclcpp-lifecycle, realtime-tools, rosidl-dynamic-typesupport, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-linear-feedback-controller";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linear-feedback-controller-release/archive/release/rolling/linear_feedback_controller/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "ce24c5c338f712669367b38425e70d5cbc71be1bd5420288e637b1897296c68e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python fmt jrl-cmakemodules parameter-traits ];
  checkInputs = [ ament-lint-auto gmock-vendor gtest-vendor ];
  propagatedBuildInputs = [ control-toolbox controller-interface eigen generate-parameter-library hardware-interface linear-feedback-controller-msgs message-filters nav-msgs pal-statistics pinocchio pluginlib rcl rclcpp rclcpp-lifecycle realtime-tools rosidl-dynamic-typesupport sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "roscontrol controller package conputing a linear feedback. The user needs
    to provide a model of the robot and a list of controlled joint and the
    controller computes a linear feedback on the user defined state.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
