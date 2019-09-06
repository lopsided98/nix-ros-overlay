
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rmw-implementation-cmake, ament-cmake-gtest, tlsf, rclcpp, std-msgs, ament-lint-auto, rmw }:
buildRosPackage rec {
  pname = "ros-dashing-tlsf-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/dashing/tlsf_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "20e08ef319fc7fcfd26087f3e04300d55918cf536d93301d140589b0af68d570";
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
