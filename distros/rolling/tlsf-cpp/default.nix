
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl, rclcpp, rcpputils, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-rolling-tlsf-cpp";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/tlsf_cpp/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "25271ba097de935d5779a62cc11fcc0b16f5b381784b7f09543c8b3ed8679af6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common rcpputils rmw-implementation-cmake ];
  propagatedBuildInputs = [ rcl rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples";
    license = with lib.licenses; [ lgpl21Only asl20 ];
  };
}
