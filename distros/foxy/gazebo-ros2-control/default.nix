
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-gazebo-ros2-control";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/foxy/gazebo_ros2_control/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "a22bc0a8ed474a0c5943cd4ff4f8303e34b357e3e2792cdddc0cf6fc4061e8b7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles controller-manager gazebo-dev gazebo-ros hardware-interface pluginlib rclcpp std-msgs urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
