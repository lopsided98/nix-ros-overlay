
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-foxy-smacc2";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/foxy/smacc2/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "4ed2960ca253fc40410db47801a6b98e20e1ced7c97623d559d92a4e5fc95428";
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
