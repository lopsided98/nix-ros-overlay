
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, lttng-tools, rclcpp, rclpy, ros2run, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-pulse";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/TanayK07/ros2_pulse-release/archive/release/humble/ros2_pulse/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "ac965a1440b1c45ba9114d3f3ac02e728d76f1a0a85a897de303359792346c0a";
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
