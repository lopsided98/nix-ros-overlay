
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rosbag2-compression, rosbag2-test-common, zstd-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-compression-zstd";
  version = "0.15.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_compression_zstd/0.15.11-1.tar.gz";
    name = "0.15.11-1.tar.gz";
    sha256 = "d8c41d4e81c341e059ee4adcc163ed5d88bdf2240d0030ba0bcef0b81a106d2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-compression zstd-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Zstandard compression library implementation of rosbag2_compression";
    license = with lib.licenses; [ asl20 ];
  };
}
