
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmw-implementation-cmake, std-msgs, ament-lint-common, ament-cmake, tlsf, ament-lint-auto, rmw, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-tlsf-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/dashing/tlsf_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "20e08ef319fc7fcfd26087f3e04300d55918cf536d93301d140589b0af68d570";
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
