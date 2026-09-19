
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "82307a949caf43cdab5e4b878b8d2288f159cba6f174445dc47a0be1faee14c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Compression implementations for rosbag2 bags and messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
