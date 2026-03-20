
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, mujoco-vendor, pluginlib, rclcpp, ros2-control-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mujoco-ros2-control-plugins";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/humble/mujoco_ros2_control_plugins/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e474775ee8082e8a261f76c9497e37925bcfc2e53b2b85de8562e848f209739a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ mujoco-vendor pluginlib rclcpp ros2-control-cmake std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugin package for mujoco_ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
