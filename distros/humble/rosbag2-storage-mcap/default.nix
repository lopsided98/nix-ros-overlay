
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-storage-mcap-test-fixture-interfaces, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-mcap";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/humble/rosbag2_storage_mcap/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "51f3e48ffd45eeeb3746e791c7fda0f1071e9193d66ab8fcebe682310b532daf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common rcpputils rosbag2-cpp rosbag2-storage-mcap-test-fixture-interfaces rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rosbag2 storage plugin using the MCAP file format'';
    license = with lib.licenses; [ asl20 ];
  };
}
