
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-smacc2";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/SMACC2-release/archive/release/humble/smacc2/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "4270c7884e70cd9c3f050da6959fd2f9eb87a416698b5ee910155ef5e6733afe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost lttng-ust rcl rclcpp rclcpp-action smacc2-msgs tracetools tracetools-launch tracetools-trace ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An Event-Driven, Asynchronous, Behavioral State Machine Library for ROS2 (Robotic Operating System) applications written in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
