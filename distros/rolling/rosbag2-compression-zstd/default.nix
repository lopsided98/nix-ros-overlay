
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rosbag2-compression, rosbag2-test-common, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression-zstd";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression_zstd/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "e4e4f6b847d0d7dfa69c9f4bef099995ac0c8ec9d6fd9d52023e97809b087a3a";
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
