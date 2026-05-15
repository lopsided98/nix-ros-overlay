
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rosbag2-compression, rosbag2-test-common, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-compression-zstd";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_compression_zstd/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "30819040ff368e437f359c6d9bf1d33c0d1bfd46622efc0cfee2e8dbeb90ffa4";
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
