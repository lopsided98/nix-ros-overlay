
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-compression";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_compression/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "790d4202ae89d7967927ed3e1b0fcfa082d0e2af037d368c01c4a00475ec813f";
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
