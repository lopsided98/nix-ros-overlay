
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-nose, ament-cmake-ros, builtin-interfaces, rcl-interfaces, rclpy, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosbridge-library, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rosapi";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosapi/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "11fd323e6db0f18eb886469c75f6c10ed07ccb716b44871a17c5316f9785137b";
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
