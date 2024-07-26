
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-transport, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-tests";
  version = "0.26.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_tests/0.26.4-1.tar.gz";
    name = "0.26.4-1.tar.gz";
    sha256 = "cc61d38e39c40b0e65d05e43f343aa84a36565a43179cb424f5bb3339aeb5162";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rcpputils ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-interfaces rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common rosbag2-transport std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tests package for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
