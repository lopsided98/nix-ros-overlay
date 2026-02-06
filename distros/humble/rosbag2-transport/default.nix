
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, keyboard-handler, rclcpp, rmw, rmw-implementation-cmake, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, rosbag2-test-common, shared-queues-vendor, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-transport";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_transport/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "f99169767d538fbea51af1b8813757d5e30bdfecfaa205dac904d9e9934d7d19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto ament-lint-common rmw-implementation-cmake rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-storage-mcap rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ keyboard-handler rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-interfaces rosbag2-storage shared-queues-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware";
    license = with lib.licenses; [ asl20 ];
  };
}
