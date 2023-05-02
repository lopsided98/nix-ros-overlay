
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-gazebo-ros2-control";
  version = "0.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/rolling/gazebo_ros2_control/0.5.1-3.tar.gz";
    name = "0.5.1-3.tar.gz";
    sha256 = "77b50d0fdc96bcefa0979957005ebab73767dbd9540310b16bd49effde7a615a";
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
