
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, rosbag2-compression, rosbag2-test-common, zstd-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-compression-zstd";
  version = "0.26.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_compression_zstd/0.26.4-1.tar.gz";
    name = "0.26.4-1.tar.gz";
    sha256 = "9db41e8e9470e32815195f4ce49e6f3f6d595accc751db4585695c6223da8fd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcutils rosbag2-compression zstd-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Zstandard compression library implementation of rosbag2_compression";
    license = with lib.licenses; [ asl20 ];
  };
}
