
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, rcl-lifecycle, rclcpp, rmw, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-lifecycle";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp_lifecycle/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4f11909f030671a0709f7c84a94978211704343d977e7bad7bb020ab599f181c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
