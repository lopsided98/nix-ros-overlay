
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, rcl-lifecycle, rclpy, ament-cmake-gtest, rosidl-typesupport-cpp, rmw-implementation, lifecycle-msgs, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rclcpp-lifecycle";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp_lifecycle/0.6.4-0.tar.gz;
    sha256 = "d9e05dc10b16031ec559fd12f315139708c458a811bf4133e7863c65f26806cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation lifecycle-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rcl-lifecycle rclpy rosidl-typesupport-cpp rmw-implementation lifecycle-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
