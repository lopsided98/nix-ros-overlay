
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-common, rcl-lifecycle, lifecycle-msgs, ament-cmake-gtest, rclpy, rosidl-typesupport-cpp, rmw-implementation, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rclcpp-lifecycle";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp_lifecycle/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "379a12d81886bc16c810306e01f996dc2d1ac3f99a3db19a17caacdc4bd0ebba";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation rclcpp lifecycle-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rcl-lifecycle rclpy rosidl-typesupport-cpp rmw-implementation rclcpp lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
