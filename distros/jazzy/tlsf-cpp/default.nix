
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-jazzy-tlsf-cpp";
  version = "0.17.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/jazzy/tlsf_cpp/0.17.0-3.tar.gz";
    name = "0.17.0-3.tar.gz";
    sha256 = "5e2024ca1f8044566f0084a8f7be879ca9ee9ebaae336ec55545e95efd7b7830";
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
