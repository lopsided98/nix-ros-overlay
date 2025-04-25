
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression";
  version = "0.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression/0.32.0-1.tar.gz";
    name = "0.32.0-1.tar.gz";
    sha256 = "6177167c9cf2f21fe456a0aa0604b8cf8e4e54eb45bbfe24687058ff8755304e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compression implementations for rosbag2 bags and messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
