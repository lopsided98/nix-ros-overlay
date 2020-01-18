
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, rcl-lifecycle, rclcpp, rmw-implementation, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-lifecycle";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_lifecycle/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "aa2c7e58e2d6ff0a28bc1e00d1c6ac8f89a6e08f6a648e2cf76105002f4b469f";
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
