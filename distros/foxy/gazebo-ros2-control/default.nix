
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, pluginlib, rclcpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-gazebo-ros2-control";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/foxy/gazebo_ros2_control/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7a7f1c61bb77ead7fabc14ee110990d7e3e220c9f11ea6398a17c2435b4504cd";
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
