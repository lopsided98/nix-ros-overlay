
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-rolling-tlsf-cpp";
  version = "0.18.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/tlsf_cpp/0.18.2-1.tar.gz";
    name = "0.18.2-1.tar.gz";
    sha256 = "4e3ea4a7e4a0c55a2bdd88be55d6b8f940ccb84c0f7405a47cbbe429b45760af";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rmw-implementation-cmake ];
  propagatedBuildInputs = [ ament-cmake rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples";
    license = with lib.licenses; [ "LGPL-2.1-only" asl20 ];
  };
}
