
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-compression";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/rosbag2_compression/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "8bac49b6e040448fa226a6205b9b04ce785fe8b007def26a8767bb8026ad81ff";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compression implementations for rosbag2 bags and messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
