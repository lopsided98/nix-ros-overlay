
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-smacc2";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/SMACC2-release/archive/release/rolling/smacc2/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "4fe8371092104b0e61840ed60d99b5c0a21fbd77b1c75543f7471679470ea895";
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
