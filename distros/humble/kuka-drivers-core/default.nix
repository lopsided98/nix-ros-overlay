
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, lifecycle-msgs, rclcpp, rclcpp-lifecycle, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers-core";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers_core/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6e66d488cf8145828f0c1d9217c3477ef280bb423516931a562fc73561b74080";
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
