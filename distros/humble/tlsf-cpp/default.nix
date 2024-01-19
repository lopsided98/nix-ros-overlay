
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-humble-tlsf-cpp";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/humble/tlsf_cpp/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "015d2c8320af94d7a05954ff7b3de18d98791f774b0654e902d4117a555e5e19";
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
