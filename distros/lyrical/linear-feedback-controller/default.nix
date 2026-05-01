
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pinocchio, ament-cmake-auto, ament-cmake-python, ament-lint-auto, control-toolbox, controller-interface, eigen, fmt, generate-parameter-library, gmock-vendor, gtest-vendor, hardware-interface, jrl-cmakemodules, linear-feedback-controller-msgs, message-filters, nav-msgs, pal-statistics, parameter-traits, pluginlib, rcl, rclcpp, rclcpp-lifecycle, realtime-tools, rosidl-dynamic-typesupport, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-linear-feedback-controller";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linear-feedback-controller-release/archive/release/lyrical/linear_feedback_controller/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "ce79a5789f11e346b0809386a13a8176877a0b51a4a1ce0aba0b181c85bad94c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python fmt jrl-cmakemodules parameter-traits ];
  checkInputs = [ ament-lint-auto gmock-vendor gtest-vendor ];
  propagatedBuildInputs = [ _unresolved_pinocchio control-toolbox controller-interface eigen generate-parameter-library hardware-interface linear-feedback-controller-msgs message-filters nav-msgs pal-statistics pluginlib rcl rclcpp rclcpp-lifecycle realtime-tools rosidl-dynamic-typesupport sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "roscontrol controller package conputing a linear feedback. The user needs
    to provide a model of the robot and a list of controlled joint and the
    controller computes a linear feedback on the user defined state.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
