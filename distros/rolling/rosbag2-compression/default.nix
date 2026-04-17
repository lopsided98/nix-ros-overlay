
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "e765631f82bc22561f49ba5103b8c8d7c26610a0d567cdd19d5ecdfad63472eb";
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
