
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-transport, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-tests";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_tests/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "fedb772fb668aa6881dc240662d9a196fce0772ae286d4f83ef8cc64a3acc750";
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
