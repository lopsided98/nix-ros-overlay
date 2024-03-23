
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-rolling-tlsf-cpp";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/tlsf_cpp/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "908c254ef713563f09694171eb7523b77173ef4858a855700b1ee639063d57a5";
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
