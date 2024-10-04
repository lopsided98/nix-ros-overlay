
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-gazebo-ros2-control";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/iron/gazebo_ros2_control/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "6e1b4fd962026ee06e0dfc41f92563d890b10323af7f8121c8425a3890ba300d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-dev gazebo-ros hardware-interface pluginlib rclcpp std-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gazebo_ros2_control";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
