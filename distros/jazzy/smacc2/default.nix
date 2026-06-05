
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-smacc2";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/smacc2/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "f7f8ecdfd243b391a38bdc84b1a526446322917e80ca5e3b53ce1d103037989c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost lttng-ust rcl rclcpp rclcpp-action smacc2-msgs tracetools tracetools-launch tracetools-trace ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An Event-Driven, Asynchronous, Behavioral State Machine Library for ROS2 (Robotic Operating System) applications written in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
