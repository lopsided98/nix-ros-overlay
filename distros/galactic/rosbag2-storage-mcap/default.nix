
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-storage-mcap";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/galactic/rosbag2_storage_mcap/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "bf9bd3afda0b558033764bc59242e9a2a51b8a31ddb9467cb6d5ee007ebd4343";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common rcpputils rosbag2-cpp rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rosbag2 storage plugin using the MCAP file format'';
    license = with lib.licenses; [ asl20 ];
  };
}
