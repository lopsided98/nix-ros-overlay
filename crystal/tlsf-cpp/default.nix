
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmw-implementation-cmake, std-msgs, ament-lint-common, ament-cmake, tlsf, ament-lint-auto, rmw, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-tlsf-cpp";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/crystal/tlsf_cpp/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "0226cc7cd7cbe864671d5f5c83d87b483bdb6e7c0a3fb205276aec9e47acd903";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ament-cmake tlsf rmw rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ament-cmake-gtest rmw-implementation-cmake ];
  propagatedBuildInputs = [ std-msgs tlsf ament-cmake rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
