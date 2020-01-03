
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, std-msgs, tlsf }:
buildRosPackage {
  pname = "ros-eloquent-tlsf-cpp";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/eloquent/tlsf_cpp/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "5ecfd7336bf1895b71c7212afef4714bbfc91fecd626d663308b17108abbfcd2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rmw-implementation-cmake ];
  propagatedBuildInputs = [ ament-cmake rclcpp rmw std-msgs tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
