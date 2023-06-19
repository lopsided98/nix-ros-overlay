
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-smacc2";
  version = "2.3.8-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/humble/smacc2/2.3.8-1.tar.gz";
    name = "2.3.8-1.tar.gz";
    sha256 = "8bc01311dc0597bcafc521b0bf8454e2aef8f1ee3aaf4bbe94e25e6ae50ca56f";
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
