
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-gazebo-ros2-control";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/galactic/gazebo_ros2_control/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "aee4a0fbbb40947e81ff927473ce14895745662957cd9a7a09dd7645c5a04857";
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
