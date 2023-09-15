
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-iron-rosbag2-compression";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_compression/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "2a8027f3dc13991007154c27c0a67f32753e09197be477a87979fe103fc7fef5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compression implementations for rosbag2 bags and messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
