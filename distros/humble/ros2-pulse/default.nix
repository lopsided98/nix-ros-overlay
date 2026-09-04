
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, lttng-tools, rclcpp, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-pulse";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/TanayK07/ros2_pulse-release/archive/release/humble/ros2_pulse/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "24a0b214166a3edff289ca1ef896f87657f0e7948745c3959b1a2914d734f40e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest lttng-tools rclcpp ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Near-zero-overhead ROS 2 probe for per-topic message frequency and active-node liveness,
    covering both inter-process and intra-process traffic. Works on stock ROS 2 binaries via an
    LD_PRELOAD shim over the tracetools instrumentation layer: no patched rmw_implementation, no
    ROS recompile, no privileges, and no DDS traffic.";
    license = with lib.licenses; [ asl20 ];
  };
}
