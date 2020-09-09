
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, zstd-vendor }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-compression";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_compression/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "fe16505fbb08939679503e3deb934d2ef0039fc57b7842db2e1036c5c8437486";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage zstd-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compression implementations for rosbag2 bags and messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
