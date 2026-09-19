
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, lttng-tools, rclcpp, rclpy, ros2run, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2-pulse";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/TanayK07/ros2_pulse-release/archive/release/kilted/ros2_pulse/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "af28c1044330dfce1e0dfd0828978e4443dcfcec0e4d9213166bfdd8d36c5a50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest lttng-tools rclpy ros2run std-msgs ];
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
