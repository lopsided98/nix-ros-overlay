
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, metro-benchmark-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-metro-benchmark-pub";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metrics_msgs-release/archive/release/humble/metro_benchmark_pub/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "aa7e2bf9a5b0df7b0ec8341af9847d637620f8167c176549dabd0d8733508c2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ metro-benchmark-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Utilities for publishing / processing metro_benchmark_msgs'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
