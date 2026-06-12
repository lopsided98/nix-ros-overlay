
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, control-toolbox, controller-interface, eigen, fmt, generate-parameter-library, gmock-vendor, gtest-vendor, hardware-interface, jrl-cmakemodules, linear-feedback-controller-msgs, message-filters, nav-msgs, pal-statistics, pinocchio, pluginlib, rcl, rclcpp, rclcpp-lifecycle, realtime-tools, sensor-msgs, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-humble-linear-feedback-controller";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linear-feedback-controller-release/archive/release/humble/linear_feedback_controller/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "2b7e300f791ae4c99d695171703317110e26ddaf6563bb8379ba41963a3dfb7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python fmt jrl-cmakemodules tl-expected-nixpkgs ];
  checkInputs = [ ament-lint-auto gmock-vendor gtest-vendor ];
  propagatedBuildInputs = [ control-toolbox controller-interface eigen generate-parameter-library hardware-interface linear-feedback-controller-msgs message-filters nav-msgs pal-statistics pinocchio pluginlib rcl rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "roscontrol controller package conputing a linear feedback. The user needs
    to provide a model of the robot and a list of controlled joint and the
    controller computes a linear feedback on the user defined state.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
