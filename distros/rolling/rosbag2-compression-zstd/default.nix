
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rosbag2-compression, rosbag2-test-common, zstd-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression-zstd";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression_zstd/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "690124aeb2a9a2cb1d99b8929914c23e960712f0ff5aa8f56bb2925b49f4a170";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-compression zstd-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Zstandard compression library implementation of rosbag2_compression'';
    license = with lib.licenses; [ asl20 ];
  };
}
