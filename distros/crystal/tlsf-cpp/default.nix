
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-crystal-tlsf-cpp";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/crystal/tlsf_cpp/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "0226cc7cd7cbe864671d5f5c83d87b483bdb6e7c0a3fb205276aec9e47acd903";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rmw-implementation-cmake ];
  propagatedBuildInputs = [ ament-cmake rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
