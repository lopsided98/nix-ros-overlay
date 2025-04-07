
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-jazzy-tlsf-cpp";
  version = "0.17.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/jazzy/tlsf_cpp/0.17.1-3.tar.gz";
    name = "0.17.1-3.tar.gz";
    sha256 = "ffaaaa7c14948b57e46e0c73f4583c890492bae11175f22238a9ae71cf338e63";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rcpputils rmw-implementation-cmake ];
  propagatedBuildInputs = [ ament-cmake rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples";
    license = with lib.licenses; [ "LGPL-2.1-only" asl20 ];
  };
}
