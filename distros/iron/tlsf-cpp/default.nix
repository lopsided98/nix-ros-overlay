
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-iron-tlsf-cpp";
  version = "0.15.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/iron/tlsf_cpp/0.15.0-3.tar.gz";
    name = "0.15.0-3.tar.gz";
    sha256 = "69b07ad08cc69728e3a41c5209f706c63b75ca6ebf9825792235b1aa70257768";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rmw-implementation-cmake ];
  propagatedBuildInputs = [ ament-cmake rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples'';
    license = with lib.licenses; [ "LGPL-2.1-only" asl20 ];
  };
}
