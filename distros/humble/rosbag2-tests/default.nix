
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-tests";
  version = "0.15.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_tests/0.15.14-1.tar.gz";
    name = "0.15.14-1.tar.gz";
    sha256 = "d378da5e19a5762ba518e02f0802a4924728c6d54521d17be45be291f2c760fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rcpputils ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tests package for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
