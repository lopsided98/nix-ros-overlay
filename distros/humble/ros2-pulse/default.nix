
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, lttng-tools, rcl, rclcpp, rclpy, ros2run, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-pulse";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/TanayK07/ros2_pulse-release/archive/release/humble/ros2_pulse/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f8cc94b9fe87ebe68e4414fcedb33f4d46d3a92d583bf979290aace176e0f400";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest lttng-tools rcl rclpy ros2run std-msgs ];
  propagatedBuildInputs = [ rclcpp statistics-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Near-zero-overhead ROS 2 probe for per-topic message frequency and active-node liveness,
    covering both inter-process and intra-process traffic. Works on stock ROS 2 binaries via an
    LD_PRELOAD shim over the tracetools instrumentation layer: no patched rmw_implementation, no
    ROS recompile, no privileges, and no DDS traffic.";
    license = with lib.licenses; [ asl20 ];
  };
}
