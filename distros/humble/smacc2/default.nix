
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-smacc2";
  version = "2.3.20-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/humble/smacc2/2.3.20-2.tar.gz";
    name = "2.3.20-2.tar.gz";
    sha256 = "0f2d5b53ab1ca572d0382aeae85caf5470e376867ecc310eb5b970113a358554";
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
