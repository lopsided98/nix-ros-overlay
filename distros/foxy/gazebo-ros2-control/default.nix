
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-gazebo-ros2-control";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/foxy/gazebo_ros2_control/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "3bf7d6a6dd7f88ec803aab89c4bdd4c781e6b1f075fc6088deecc7ff42a951a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles controller-manager gazebo-dev gazebo-ros hardware-interface pluginlib rclcpp std-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
