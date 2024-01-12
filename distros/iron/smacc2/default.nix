
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-iron-smacc2";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/SMACC2-release/archive/release/iron/smacc2/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "14ba9f16ead0306f1b0cad6f9c639acef665112766d1bbc0b8cb5408ceca678c";
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
