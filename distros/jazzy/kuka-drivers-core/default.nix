
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, lifecycle-msgs, rclcpp, rclcpp-lifecycle, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-kuka-drivers-core";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_drivers_core/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a50007230b66fd8a880efce1d3f894e6da68914309e11b6423b44fb0203a20e2";
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
