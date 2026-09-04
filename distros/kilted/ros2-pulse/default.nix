
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, lttng-tools, rclcpp, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2-pulse";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/TanayK07/ros2_pulse-release/archive/release/kilted/ros2_pulse/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "da98fdc027e480cc7214141b617a598bd41b712e13b74e4c375ad01704b9ca1b";
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
