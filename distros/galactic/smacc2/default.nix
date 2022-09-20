
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, lttng-ust, rcl, rclcpp, rclcpp-action, smacc2-msgs, tracetools, tracetools-launch, tracetools-trace }:
buildRosPackage {
  pname = "ros-galactic-smacc2";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/galactic/smacc2/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "0d35fc3fa12186ac35359635166317ff65a4bdf012f7b3c775b19ec890bfeaa6";
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
