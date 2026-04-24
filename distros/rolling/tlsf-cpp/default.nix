
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl, rclcpp, rcpputils, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-rolling-tlsf-cpp";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/tlsf_cpp/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "798143f98a2a3f10e5a25a7dc960db8c9c3b44739bac30b6e8e078ad9f806228";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common rcpputils rmw-implementation-cmake ];
  propagatedBuildInputs = [ rcl rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples";
    license = with lib.licenses; [ "LGPL-2.1-only" asl20 ];
  };
}
