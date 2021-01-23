
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, rcl-lifecycle, rclcpp, rmw-implementation, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-lifecycle";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_lifecycle/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "538d230932d6373978b7ecf00fc597d5f935e887a63da0ee662f007d0b131c3c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw-implementation rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
