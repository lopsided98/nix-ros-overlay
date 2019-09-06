
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rmw-implementation-cmake, ament-cmake-gtest, tlsf, rclcpp, std-msgs, ament-lint-auto, rmw }:
buildRosPackage {
  pname = "ros-crystal-tlsf-cpp";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/crystal/tlsf_cpp/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "0226cc7cd7cbe864671d5f5c83d87b483bdb6e7c0a3fb205276aec9e47acd903";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tlsf rclcpp std-msgs rmw ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest rmw-implementation-cmake ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake tlsf rclcpp std-msgs rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
