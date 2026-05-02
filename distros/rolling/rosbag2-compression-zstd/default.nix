
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rosbag2-compression, rosbag2-test-common, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression-zstd";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression_zstd/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "bdcb5f929758ed03b69f380318711219b1b43f51e331481048388612a9e17db7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcutils rosbag2-compression zstd-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Zstandard compression library implementation of rosbag2_compression";
    license = with lib.licenses; [ asl20 ];
  };
}
