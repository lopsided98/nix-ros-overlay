
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-nose, ament-cmake-ros, builtin-interfaces, rcl-interfaces, rclpy, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosbridge-library, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rosapi";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosapi/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "bd757ef9b98871a4686ff3f88f66221292d4380685b81da2a40287751b36b553";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-nose ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2param ros2pkg ros2service ros2topic rosbridge-library rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
