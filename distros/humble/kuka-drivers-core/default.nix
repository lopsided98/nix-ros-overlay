
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, lifecycle-msgs, rclcpp, rclcpp-lifecycle, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers-core";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers_core/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "42f3aa41a483ccdf643ff62aefafd647843f6e8fc7ec95d176af7a1c3362e1af";
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
