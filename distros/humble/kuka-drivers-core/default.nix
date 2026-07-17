
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, lifecycle-msgs, rclcpp, rclcpp-lifecycle, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers-core";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers_core/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4e3e8f7a555efba780468b3820b947086e84bb2b071e6f66d7f99dcbb4b0d176";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ controller-manager lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Package containing ROS2 core functions for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
